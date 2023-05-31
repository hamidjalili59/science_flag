import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:math_keyboard/math_keyboard.dart';
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
    FunctionHelper().logMessage('>>>>> Home Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onAddTool(
    _AddTool event,
    Emitter<EditorPageState> emit,
  ) async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    emit(EditorPageState.idle(
        controller: state.controller, isLoading: true, name: state.name));
    if (event.widgetType == 'text') {
      state.controller!.document.insert(
          event.textSelection.baseOffset,
          EmbeddableObject('widget',
              inline: true, data: {'width': 50.0, 'height': 60.0}));
      emit(EditorPageState.idle(
          controller: state.controller, isLoading: false, name: state.name));
    } else if (event.widgetType == 'camera') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      final imagesPath = await CunningDocumentScanner.getPictures();
      await File(imagesPath!.first).copy(
          '${appDocumentsDir.path}/camera${event.textSelection.baseOffset}');
      state.controller!.document.insert(
          event.textSelection.baseOffset,
          EmbeddableObject('camera', inline: false, data: {
            'length': imagesPath.length,
            'images':
                '${appDocumentsDir.path}/camera${event.textSelection.baseOffset}'
          }));
      emit(EditorPageState.idle(
          controller: state.controller, isLoading: false, name: state.name));
    } else if (event.widgetType == 'gallary') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');

      XFile? imageFile = await FunctionHelper().imagePickerMethod();
      await File(imageFile.path).copy(
          '${appDocumentsDir.path}/gallary${event.textSelection.baseOffset}');
      state.controller!.document.insert(
          event.textSelection.baseOffset,
          EmbeddableObject('gallary', inline: false, data: {
            'image':
                '${appDocumentsDir.path}/gallary${event.textSelection.baseOffset}'
          }));
      emit(EditorPageState.idle(
          controller: state.controller, isLoading: false, name: state.name));
    } else if (event.widgetType == 'formula') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      await NDialog(
        title: Text(
          'فرمول را در کادر زیر وارد کنید',
          style: Theme.of(getIt.get<AppRouter>().navigatorKey.currentContext!)
              .textTheme
              .titleSmall,
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          width: 0.3.sw,
          height: 0.1.sh,
          child: MathField(
            // No parameters are required.
            keyboardType: MathKeyboardType
                .expression, // Specify the keyboard type (expression or number only).
            variables: const [
              'x',
              'y',
              'z'
            ], // Specify the variables the user can use (only in expression mode).
            decoration:
                const InputDecoration(), // Decorate the input field using the familiar InputDecoration.
            onChanged:
                (String value) {}, // Respond to changes in the input field.
            onSubmitted: (String value) {
              state.controller!.document.insert(
                  event.textSelection.baseOffset,
                  EmbeddableObject('formula',
                      inline: true, data: {'value': value, 'size': 18.0}));
              getIt.get<AppRouter>().popUntilRouteWithName('Editor');
            }, // Respond to the user submitting their input.
            autofocus: true, // Enable or disable autofocus of the input field.
          ),
        ),
      ).show(getIt.get<AppRouter>().navigatorKey.currentContext!,
          dismissable: false);
      emit(EditorPageState.idle(
          controller: state.controller, isLoading: false, name: state.name));
    } else if (event.widgetType == 'voice') {
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      emit(EditorPageState.idle(
          controller: state.controller, isLoading: false, name: state.name));
      if (!getIt.isRegistered<Record>()) {
        getIt.registerSingleton<Record>(Record());
      }
      if (!getIt.isRegistered<AudioPlayer>()) {
        getIt.registerSingleton<AudioPlayer>(AudioPlayer());
      }
      await NDialog(
        dialogStyle: DialogStyle(
          backgroundColor: Colors.white38,
        ),
        content: RecordDialogWidget(
          appDocumentsDir: appDocumentsDir.path,
          baseOffset: event.textSelection.baseOffset,
        ),
      )
          .show(
        getIt.get<AppRouter>().navigatorKey.currentContext!,
        transitionType: DialogTransitionType.BottomToTop,
        dismissable: false,
      )
          .whenComplete(() async {
        if (await File(
                '${appDocumentsDir.path}/voice${event.textSelection.baseOffset}')
            .exists()) {
          state.controller!.document.insert(
              event.textSelection.baseOffset,
              EmbeddableObject('voice', inline: true, data: {
                'audio':
                    '${appDocumentsDir.path}/voice${event.textSelection.baseOffset}'
              }));
          state.controller!.formatSelection(
              ParchmentAttribute.backgroundColor.fromString('0x602BAAFF'));
        }
        getIt.get<Record>().dispose();
        getIt.unregister<Record>();
        getIt.get<AudioPlayer>().dispose();
        getIt.unregister<AudioPlayer>();
      });
    } else {}
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
  ) {
    if (event.widgetType == 'text') {
    } else if (event.widgetType == 'camera') {
    } else {}
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
}
