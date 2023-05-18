import 'dart:async';

import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/notes/domain/models/notes_item_list_model.dart';
import 'package:base_project/src/features/notes/domain/use_cases/get_notes_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:base_project/src/features/core/models/tuple.dart' as tuple;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notes_state.dart';
part 'notes_event.dart';
part 'notes_bloc.freezed.dart';

@injectable
class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final GetNotesDataUseCase _otpLoginUseCase;
  NotesBloc(this._otpLoginUseCase)
      : super(const NotesState.idle(isLoading: true)) {
    on<_Refresh>(_onRefresh);
    on<_GetNotesItem>(_onGetNotesItem);
    add(const _GetNotesItem());
  }
  @override
  void onEvent(NotesEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onRefresh(
    _Refresh event,
    Emitter<NotesState> emit,
  ) {}
  FutureOr<void> _onGetNotesItem(
    _GetNotesItem event,
    Emitter<NotesState> emit,
  ) async {
    emit(
      const NotesState.idle(isLoading: true),
    );
    await Future.delayed(const Duration(seconds: 2));
    await _otpLoginUseCase.call().then(
          (value) => value.fold(
            (l) {
              return const NotesState.failed();
            },
            (r) {
              emit(
                NotesState.idle(
                  isLoading: false,
                  notes: r,
                ),
              );
            },
          ),
        );
  }
}
