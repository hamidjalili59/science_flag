import 'dart:async';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

part 'editor_state.dart';
part 'editor_event.dart';
part 'editor_bloc.freezed.dart';

List<Map<String, dynamic>> statecurrent = [];

@injectable
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  EditorBloc() : super(const EditorState.idle()) {
    on<_AddTool>(_onAddTool);
    on<_RemoveTool>(_onRemoveTool);
    on<_UpdateTool>(_onUpdateTool);
    on<_SwitchPosition>(_onSwitchPosition);
  }

  FutureOr<void> _onAddTool(
    _AddTool event,
    Emitter<EditorState> emit,
  ) async {
    List<Map<String, dynamic>> s = event.stackWidget.toList();

    if (event.widgetType == 'text') {
      s.add({
        'data': quill.QuillController.basic(),
        'fn': FocusNode(),
        'type': 'text',
      });
    } else if (event.widgetType == 'camera') {
      List<String> images = (await CunningDocumentScanner.getPictures() ?? []);
      for (var i = 0; i < images.length; i++) {
        s.add({
          'data': images[i],
          'type': 'image',
        });
      }
    } else {}
    statecurrent = s;
    emit(EditorState.idle(
        isLoading: false, stackWidgetData: s, selectPosition: s.length - 1));
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
          isLoading: false,
          stackWidgetData: event.stackWidget,
        ),
      );
    } else if (event.widgetType == 'camera') {
    } else {}
    statecurrent = event.stackWidget;
  }
}
