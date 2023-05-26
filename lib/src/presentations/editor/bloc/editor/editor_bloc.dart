import 'dart:async';
import 'dart:convert';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/use_cases/read_node_editor_usecase.dart';
import 'package:base_project/src/features/editor/domain/use_cases/save_note_usecase.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/editor_mobile_widget.dart';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:math_keyboard/math_keyboard.dart';
import 'package:ndialog/ndialog.dart';

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
    if (event.widgetType == 'text') {
      emit(EditorPageState.idle(controller: state.controller, isLoading: true));
      state.controller!.document.insert(
          event.position,
          EmbeddableObject('widget',
              inline: true, data: {'width': 50.0, 'height': 60.0}));
      emit(
          EditorPageState.idle(controller: state.controller, isLoading: false));
    } else if (event.widgetType == 'camera') {
      emit(EditorPageState.idle(controller: state.controller, isLoading: true));
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      final imagesPath = await CunningDocumentScanner.getPictures();
      state.controller!.document.insert(
          event.position,
          EmbeddableObject('camera',
              inline: true,
              data: {'length': imagesPath!.length, 'images': imagesPath}));
      emit(
          EditorPageState.idle(controller: state.controller, isLoading: false));
    } else if (event.widgetType == 'gallary') {
      emit(EditorPageState.idle(controller: state.controller, isLoading: true));
      getIt.get<AppRouter>().popUntilRouteWithName('Editor');
      XFile? imageFile = await FunctionHelper().imagePickerMethod();
      state.controller!.document.insert(
          event.position,
          EmbeddableObject('gallary',
              inline: true, data: {'image': imageFile.path}));
      emit(
          EditorPageState.idle(controller: state.controller, isLoading: false));
    } else if (event.widgetType == 'formula') {
      emit(EditorPageState.idle(controller: state.controller, isLoading: true));
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
                  event.position,
                  EmbeddableObject('formula',
                      inline: true, data: {'value': value, 'size': 18.0}));
              getIt.get<AppRouter>().popUntilRouteWithName('Editor');
            }, // Respond to the user submitting their input.
            autofocus: true, // Enable or disable autofocus of the input field.
          ),
        ),
      ).show(getIt.get<AppRouter>().navigatorKey.currentContext!,
          dismissable: false);
      emit(
          EditorPageState.idle(controller: state.controller, isLoading: false));
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
      emit(const EditorPageState.idle(isLoading: true));
      await _readNodeUsecase
          .call(param: const tuple.Tuple1<String>('hamid'))
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
                  ));
                } catch (err, _) {
                  final controller = FleatherController();
                  emit(EditorPageState.idle(
                    isLoading: false,
                    controller: controller,
                  ));
                }
              },
              (r) async {
                try {
                  final result = json.decode(r);

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
                  ));
                } catch (err, _) {
                  final controller = FleatherController();
                  emit(EditorPageState.idle(
                    isLoading: false,
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
        ));
      } catch (err, _) {
        final controller = FleatherController();
        emit(EditorPageState.idle(
          isLoading: false,
          controller: controller,
        ));
      }
    }
  }

  FutureOr<void> _onSaveDocument(
      _SaveDocument event, Emitter<EditorPageState> emit) async {
    List<dynamic> tempDoc = state.controller!.document.toDelta().toJson();
    await _saveNodeUsecase.call(
        param: tuple.Tuple2(json.encode(tempDoc), 'hamid'));

    getIt.get<AppRouter>().pop();
  }
}
