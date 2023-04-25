import 'dart:async';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_model.dart';
import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

part 'editor_state.dart';
part 'editor_event.dart';
part 'editor_bloc.freezed.dart';

EditorItemList statecurrent = EditorItemList([], EditorItemLayoutType.oneBloc);
List<EditorItemList> stackWidgetList = [];

@injectable
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  EditorBloc() : super(const EditorState.idle()) {
    on<_AddTool>(_onAddTool);
    on<_AddBlocTool>(_onAddBlocTool);

    on<_RemoveTool>(_onRemoveTool);
    on<_UpdateTool>(_onUpdateTool);
    on<_SwitchPosition>(_onSwitchPosition);
  }

  FutureOr<void> _onAddBlocTool(
    _AddBlocTool event,
    Emitter<EditorState> emit,
  ) async {
    if (event.type == EditorItemLayoutType.oneBloc) {
    } else if (event.type == EditorItemLayoutType.twoBloc) {
    } else if (event.type == EditorItemLayoutType.threeBloc) {
    } else if (event.type == EditorItemLayoutType.fourBloc) {
    } else if (event.type == EditorItemLayoutType.bigMiddle) {
    } else if (event.type == EditorItemLayoutType.bigLeftBloc) {
    } else {}

    emit(EditorState.idle(
        stackWidgetList: stackWidgetList,
        isLoading: false,
        stackWidgetData: statecurrent,
        selectPosition: event.stackWidget.items.length - 1));
  }

  FutureOr<void> _onAddTool(
    _AddTool event,
    Emitter<EditorState> emit,
  ) async {
    EditorItemList s = event.stackWidget;
    if (event.widgetType == 'text') {
      s.items.add(
        EditorItemModel(
          event.stackWidget.items.length,
          quill.QuillController.basic(),
          EditorItemType.text,
          false,
          '',
          FocusNode(),
        ),
      );
    } else if (event.widgetType == 'camera') {
      List<String> images = (await CunningDocumentScanner.getPictures() ?? []);
      for (var i = 0; i < images.length; i++) {
        s.items.add(EditorItemModel(event.stackWidget.items.length, images[i],
            EditorItemType.camera, false, '', ''));
      }
    } else {}
    statecurrent = s;
    emit(EditorState.idle(
        stackWidgetList: stackWidgetList,
        isLoading: false,
        stackWidgetData: s,
        selectPosition: event.stackWidget.items.length - 1));
  }

  FutureOr<void> _onRemoveTool(
    _RemoveTool event,
    Emitter<EditorState> emit,
  ) {}
  FutureOr<void> _onSwitchPosition(
    _SwitchPosition event,
    Emitter<EditorState> emit,
  ) {
    emit(EditorState.idle(
      stackWidgetList: stackWidgetList,
      isLoading: false,
      selectPosition: event.position,
      stackWidgetData: statecurrent,
    ));
  }

  FutureOr<void> _onUpdateTool(
    _UpdateTool event,
    Emitter<EditorState> emit,
  ) {
    if (event.widgetType == 'text') {
      emit(
        EditorState.idle(
          stackWidgetList: stackWidgetList,
          isLoading: false,
          stackWidgetData: event.stackWidget,
        ),
      );
    } else if (event.widgetType == 'camera') {
    } else {}
    statecurrent = event.stackWidget;
  }
}
