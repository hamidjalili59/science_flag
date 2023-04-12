import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'editor_state.dart';
part 'editor_event.dart';
part 'editor_bloc.freezed.dart';

@injectable
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  EditorBloc() : super(const EditorState.idle()) {
    on<_Refresh>(_onRefresh);
    on<_AddTool>(_onAddTool);
    on<_RemoveTool>(_onRemoveTool);
    on<_UpdateTool>(_onUpdateTool);
  }

  FutureOr<void> _onRefresh(
    _Refresh event,
    Emitter<EditorState> emit,
  ) {}
  FutureOr<void> _onAddTool(
    _AddTool event,
    Emitter<EditorState> emit,
  ) {
    if (event.widgetType == 'text') {
      emit(EditorState.idle(
          isLoading: false, stackWidgetData: event.stackWidget));
    } else if (event.widgetType == 'camera') {
    } else {}
  }

  FutureOr<void> _onRemoveTool(
    _RemoveTool event,
    Emitter<EditorState> emit,
  ) {}
  FutureOr<void> _onUpdateTool(
    _UpdateTool event,
    Emitter<EditorState> emit,
  ) {
    if (event.widgetType == 'text') {
      emit(_Idle(isLoading: false, stackWidgetData: event.config));
    } else if (event.widgetType == 'camera') {
    } else {}
  }
}
