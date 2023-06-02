import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;
import 'package:base_project/src/features/editor/domain/use_cases/read_node_editor_usecase.dart';
import 'package:base_project/src/features/editor/domain/use_cases/save_note_usecase.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/editor_mobile_widget.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/record_dialog_widget.dart';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:ndialog/ndialog.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';

part 'editor_state.dart';
part 'editor_event.dart';
part 'editor_bloc.freezed.dart';

@lazySingleton
class EditorPageBloc extends Bloc<EditorPageEvent, EditorPageState> {
  final ReadNoteEditorUseCase _readNodeUsecase;
  final SaveNoteUseCase _saveNodeUsecase;
  EditorPageBloc(this._readNodeUsecase, this._saveNodeUsecase)
      : super(const EditorPageState.idle(isLoading: true)) {
    on<_AddTool>(_onAddTool);
    on<_RemoveTool>(_onRemoveTool);
    on<_ReadDocument>(_onReadDocument);
    on<_SaveDocument>(_onSaveDocument);
    on<_UpdateTool>(_onUpdateTool);
    on<_SwitchPosition>(_onSwitchPosition);
    on<_RecordAudio>(_onRecordAudioEvent);
    on<_PlayAudio>(_onPlayAudioEvent);
  }
  @override
  void onEvent(EditorPageEvent event) {
    FunctionHelper().logMessage('>>>>> Editor Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onAddTool(
    _AddTool event,
    Emitter<EditorPageState> emit,
  ) async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();

    if (event.widgetType == 'text') {
      state.controller!.document.insert(
          event.textSelection.baseOffset,
          EmbeddableObject('widget',
              inline: true, data: {'width': 50.0, 'height': 60.0}));
      emit(state.copyWith(isLoading: false));
    } else if (event.widgetType == 'camera') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      final imagesPath = await CunningDocumentScanner.getPictures();
      for (var i = 0; i < (imagesPath ?? []).length; i++) {
        await insertDataToDelta(imagesPath![i], appDocumentsDir.path,
            event.textSelection.baseOffset + i, 'camera');
        // await File(imagesPath![i]).copy(
        //     '${appDocumentsDir.path}/camera${event.textSelection.baseOffset + i}');
        // state.controller!.document.insert(
        //     event.textSelection.baseOffset + i,
        //     EmbeddableObject('camera', inline: false, data: {
        //       'length': imagesPath.length,
        //       'images':
        //           '${appDocumentsDir.path}/camera${event.textSelection.baseOffset + i}'
        //     }));
      }
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(isLoading: false));
    } else if (event.widgetType == 'gallary') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');

      XFile? imageFile = await FunctionHelper().imagePickerMethod();
      (int, String) path = await insertDataToDelta(imageFile.path,
          appDocumentsDir.path, event.textSelection.baseOffset, 'gallary');
      state.controller!.document.insert(event.textSelection.baseOffset,
          EmbeddableObject('gallary', inline: false, data: {'image': path.$2}));
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(isLoading: false));
    } else if (event.widgetType == 'formula') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      await FunctionHelper().formulaDialogMethod((value) {
        state.controller!.document.insert(
            event.textSelection.baseOffset,
            EmbeddableObject('formula',
                inline: true, data: {'value': value, 'size': 18.0}));
        getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      });
      emit(state.copyWith(isLoading: false));
    } else if (event.widgetType == 'voice') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      if (!getIt.isRegistered<Record>()) {
        getIt.registerSingleton<Record>(Record());
      }
      if (!getIt.isRegistered<AudioPlayer>()) {
        getIt.registerSingleton<AudioPlayer>(AudioPlayer());
      }
      (int, String) path = await insertDataToDelta(
          '', appDocumentsDir.path, event.textSelection.baseOffset, 'voice');
      await NDialog(
        dialogStyle: DialogStyle(
          backgroundColor: Colors.white38,
        ),
        content: RecordDialogWidget(
          path: path.$2,
        ),
      )
          .show(
        getIt.get<AppRouter>().navigatorKey.currentContext!,
        transitionType: DialogTransitionType.BottomToTop,
        dismissable: false,
      )
          .whenComplete(() async {
        if (await File(path.$2).exists()) {
          state.controller!.document.insert(
              path.$1,
              EmbeddableObject('voice',
                  inline: true, data: {'audio': path.$2}));
          state.controller!.formatSelection(
              ParchmentAttribute.backgroundColor.fromString('0x602BAAFF'));
        }
        getIt.get<Record>().dispose();
        getIt.unregister<Record>();
        getIt.get<AudioPlayer>().dispose();
        getIt.unregister<AudioPlayer>();
        emit(state.copyWith(isLoading: false));
      });
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _onRemoveTool(
    _RemoveTool event,
    Emitter<EditorPageState> emit,
  ) {}
  FutureOr<void> _onSwitchPosition(
    _SwitchPosition event,
    Emitter<EditorPageState> emit,
  ) {}

  FutureOr<void> _onUpdateTool(
    _UpdateTool event,
    Emitter<EditorPageState> emit,
  ) async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();

    if (event.widgetType == 'text') {
    } else if (event.widgetType == 'camera') {
      final imagesPath = await CunningDocumentScanner.getPictures();
      for (var i = 0; i < (imagesPath ?? []).length; i++) {
        //!
        await insertDataToDelta(
            imagesPath![i], appDocumentsDir.path, event.offset + i, 'camera');
      }

      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(isLoading: false));
    } else if (event.widgetType == 'gallary') {
      XFile? imageFile = await FunctionHelper().imagePickerMethod();
      (int, String) path = await insertDataToDelta(
          imageFile.path, appDocumentsDir.path, event.offset, 'gallary');
      state.controller!.document.insert(event.offset,
          EmbeddableObject('gallary', inline: false, data: {'image': path.$2}));
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(isLoading: false));
    } else if (event.widgetType == 'formula') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      await FunctionHelper().formulaDialogMethod((value) {
        state.controller!.document.replace(
            event.offset,
            event.length,
            EmbeddableObject('formula',
                inline: true, data: {'value': value, 'size': 18.0}));

        getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      });
      emit(state.copyWith(isLoading: false));
    } else if (event.widgetType == 'voice') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      if (!getIt.isRegistered<Record>()) {
        getIt.registerSingleton<Record>(Record());
      }
      if (!getIt.isRegistered<AudioPlayer>()) {
        getIt.registerSingleton<AudioPlayer>(AudioPlayer());
      }
      (int, String) path = await insertDataToDelta(
          '', appDocumentsDir.path, event.offset, 'voice');
      await NDialog(
        dialogStyle: DialogStyle(
          backgroundColor: Colors.white38,
        ),
        content: RecordDialogWidget(
          path: path.$2,
        ),
      )
          .show(
        getIt.get<AppRouter>().navigatorKey.currentContext!,
        transitionType: DialogTransitionType.BottomToTop,
        dismissable: false,
      )
          .whenComplete(() async {
        if (await File(path.$2).exists()) {
          state.controller!.document.insert(
              path.$1,
              EmbeddableObject('voice',
                  inline: true, data: {'audio': path.$2}));
          state.controller!.formatSelection(
              ParchmentAttribute.backgroundColor.fromString('0x602BAAFF'));
        }
        getIt.get<Record>().dispose();
        getIt.unregister<Record>();
        getIt.get<AudioPlayer>().dispose();
        getIt.unregister<AudioPlayer>();
        emit(state.copyWith(isLoading: false));
      });
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }

  FutureOr<void> _onReadDocument(
      _ReadDocument event, Emitter<EditorPageState> emit) async {
    try {
      emit(EditorPageState.idle(isLoading: true, name: state.name));
      await _readNodeUsecase
          .call(param: tuple.Tuple1<String>(event.name!))
          .then(
            (value) => value.fold(
              (l) async {
                try {
                  final result =
                      await rootBundle.loadString('assets/welcome.json');

                  final heuristics = ParchmentHeuristics(
                    formatRules: [],
                    insertRules: [
                      ForceNewlineForInsertsAroundInlineImageRule(),
                    ],
                    deleteRules: [],
                  ).merge(ParchmentHeuristics.fallback);
                  final doc = ParchmentDocument.fromJson(
                    jsonDecode(result),
                    heuristics: heuristics,
                  );
                  final controller = FleatherController(doc);
                  emit(EditorPageState.idle(
                    isLoading: false,
                    controller: controller,
                    name: event.name!,
                  ));
                } catch (err, _) {
                  final controller = FleatherController();
                  emit(EditorPageState.idle(
                    isLoading: false,
                    controller: controller,
                    name: event.name!,
                  ));
                }
              },
              (r) async {
                try {
                  final result = json.decode(r);
                  FunctionHelper().logger.i(result.toString());
                  final heuristics = ParchmentHeuristics(
                    formatRules: [],
                    insertRules: [
                      ForceNewlineForInsertsAroundInlineImageRule(),
                    ],
                    deleteRules: [],
                  ).merge(ParchmentHeuristics.fallback);
                  final doc = ParchmentDocument.fromJson(
                    result,
                    heuristics: heuristics,
                  );
                  final controller = FleatherController(doc);
                  emit(EditorPageState.idle(
                    isLoading: false,
                    controller: controller,
                    name: event.name!,
                  ));
                } catch (err, _) {
                  final controller = FleatherController();
                  emit(EditorPageState.idle(
                    isLoading: false,
                    name: event.name!,
                    controller: controller,
                  ));
                }
              },
            ),
          );
    } catch (_) {
      try {
        final result = await rootBundle.loadString('assets/welcome.json');

        final heuristics = ParchmentHeuristics(
          formatRules: [],
          insertRules: [
            ForceNewlineForInsertsAroundInlineImageRule(),
          ],
          deleteRules: [],
        ).merge(ParchmentHeuristics.fallback);
        final doc = ParchmentDocument.fromJson(
          jsonDecode(result),
          heuristics: heuristics,
        );
        final controller = FleatherController(doc);
        emit(EditorPageState.idle(
          isLoading: false,
          controller: controller,
          name: event.name!,
        ));
      } catch (err, _) {
        final controller = FleatherController();
        emit(EditorPageState.idle(
          isLoading: false,
          controller: controller,
          name: event.name!,
        ));
      }
    }
  }

  FutureOr<void> _onSaveDocument(
      _SaveDocument event, Emitter<EditorPageState> emit) async {
    List<dynamic> tempDoc = state.controller!.document.toDelta().toJson();
    await _saveNodeUsecase.call(
        param: tuple.Tuple2(json.encode(tempDoc), state.name));

    getIt.get<AppRouter>().pop();
  }

  FutureOr<void> _onRecordAudioEvent(event, Emitter<EditorPageState> emit) {
    emit(EditorPageState.idle(
        controller: state.controller,
        documentData: state.documentData,
        inRecording: event.isRecording,
        isLoading: false,
        name: state.name,
        selectPosition: state.selectPosition));
  }

  FutureOr<void> _onPlayAudioEvent(
      _PlayAudio event, Emitter<EditorPageState> emit) async {
    if (state.isPlaying) {
      emit(
        EditorPageState.idle(
          controller: state.controller,
          documentData: state.documentData,
          inRecording: state.inRecording,
          isLoading: false,
          isPlaying: false,
          name: state.name,
          selectPosition: state.selectPosition,
        ),
      );
      if (await File(event.path).exists()) {
        getIt.get<AudioPlayer>().stop();
        if (getIt.isRegistered<AudioPlayer>()) {
          getIt.unregister<AudioPlayer>();
        }
      }
    } else {
      emit(
        EditorPageState.idle(
          controller: state.controller,
          documentData: state.documentData,
          inRecording: state.inRecording,
          isLoading: false,
          isPlaying: true,
          name: state.name,
          selectPosition: state.selectPosition,
        ),
      );
      if (!getIt.isRegistered<AudioPlayer>()) {
        getIt.registerSingleton<AudioPlayer>(AudioPlayer());
      }
      if (await File(event.path).exists()) {
        await getIt.get<AudioPlayer>().setFilePath(event.path);
        await getIt.get<AudioPlayer>().play();
        await getIt.get<AudioPlayer>().stop();
        emit(
          EditorPageState.idle(
            controller: state.controller,
            documentData: state.documentData,
            inRecording: state.inRecording,
            isLoading: false,
            isPlaying: false,
            name: state.name,
            selectPosition: state.selectPosition,
          ),
        );
        if (getIt.isRegistered<AudioPlayer>()) {
          getIt.unregister<AudioPlayer>();
        }
      }
    }
  }

  Future<(int offset, String pathDir)> insertDataToDelta(
      String path, String appDocumentsDir, int baseOffset, String type) async {
    if (await File('$appDocumentsDir/$type$baseOffset').exists()) {
      return await insertDataToDelta(
          path, appDocumentsDir, baseOffset + 1, type);
    } else {
      if (type == 'gallary') {
        await File(path).copy('$appDocumentsDir/$type$baseOffset');
        return (baseOffset, '$appDocumentsDir/$type$baseOffset');
      } else if (type == 'voice') {
        return (baseOffset, '$appDocumentsDir/voice$baseOffset');
      } else if (type == 'camera') {
        await File(path).copy('$appDocumentsDir/$type$baseOffset');
        state.controller!.document.insert(
            baseOffset,
            EmbeddableObject('camera', inline: false, data: {
              'length': path,
              'images': '$appDocumentsDir/camera$baseOffset'
            }));
        return (baseOffset, '$appDocumentsDir/camera$baseOffset');
      } else {
        return (baseOffset, '');
      }
    }
  }
}
