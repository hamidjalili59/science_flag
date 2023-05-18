import 'dart:async';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:flutter_quill/flutter_quill.dart' as quill;

part 'editor_state.dart';
part 'editor_event.dart';
part 'editor_bloc.freezed.dart';

// List<EditorItemList> statecurrent = [];
// List<EditorItemList> stackWidgetList = [];

// @injectable
@lazySingleton
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  EditorBloc() : super(const EditorState.idle()) {
    on<_AddTool>(_onAddTool);
    on<_AddBlocTool>(_onAddBlocTool);

    on<_RemoveTool>(_onRemoveTool);
    on<_UpdateTool>(_onUpdateTool);
    on<_SwitchPosition>(_onSwitchPosition);
  }
  @override
  void onEvent(EditorEvent event) {
    FunctionHelper().logMessage('>>>>> Home Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onAddBlocTool(
    _AddBlocTool event,
    Emitter<EditorState> emit,
  ) async {
    List<EditorItemList> statecurrent = state.stackWidgetData.toList();

    if (event.type == EditorItemLayoutType.oneBloc) {
      statecurrent.add(EditorItemList([], EditorItemLayoutType.oneBloc));
    } else if (event.type == EditorItemLayoutType.twoBloc) {
      statecurrent.add(EditorItemList([], EditorItemLayoutType.twoBloc));
    } else if (event.type == EditorItemLayoutType.threeBloc) {
      statecurrent.add(EditorItemList([], EditorItemLayoutType.threeBloc));
    } else if (event.type == EditorItemLayoutType.bigLeftBloc) {
      statecurrent.add(EditorItemList([], EditorItemLayoutType.bigLeftBloc));
    } else if (event.type == EditorItemLayoutType.bigMiddle) {
      statecurrent.add(EditorItemList([], EditorItemLayoutType.bigMiddle));
    } else {
      statecurrent.add(EditorItemList([], EditorItemLayoutType.twoBloc));
    }

    emit(EditorState.idle(
        stackWidgetList: [], stackWidgetData: statecurrent, selectPosition: 0));
  }

  FutureOr<void> _onAddTool(
    _AddTool event,
    Emitter<EditorState> emit,
  ) async {
    // List<EditorItemList> s = [];
    if (event.widgetType == 'text') {
      // s.items.add(
      //   EditorItemModel(
      //     event.stackWidget.items.length,
      //     quill.QuillController.basic(),
      //     EditorItemType.text,
      //     false,
      //     '',
      //     FocusNode(),
      //   ),
      // );
    } else if (event.widgetType == 'camera') {
      // List<String> images = (await CunningDocumentScanner.getPictures() ?? []);
      // for (var i = 0; i < images.length; i++) {
      // s.items.add(EditorItemModel(event.stackWidget.items.length, images[i],
      //     EditorItemType.camera, false, '', ''));
      // }
    } else {}
    // statecurrent = s;
    // emit(EditorState.idle(
    //     stackWidgetList: stackWidgetList,
    //     isLoading: false,
    //     stackWidgetData: s,
    //     selectPosition: event.stackWidget.length - 1));
  }

  FutureOr<void> _onRemoveTool(
    _RemoveTool event,
    Emitter<EditorState> emit,
  ) {}
  FutureOr<void> _onSwitchPosition(
    _SwitchPosition event,
    Emitter<EditorState> emit,
  ) {
    // emit(EditorState.idle(
    //   stackWidgetList: stackWidgetList,
    //   selectPosition: event.position,
    //   stackWidgetData: statecurrent,
    // ));
  }

  FutureOr<void> _onUpdateTool(
    _UpdateTool event,
    Emitter<EditorState> emit,
  ) {
    if (event.widgetType == 'text') {
      // emit(
      //   EditorState.idle(
      //     stackWidgetList: stackWidgetList,
      //     isLoading: false,
      //     stackWidgetData: event.stackWidget,
      //   ),
      // );
    } else if (event.widgetType == 'camera') {
    } else {}
    // statecurrent = event.stackWidget;
  }
}
