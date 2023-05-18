import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'listview_state.dart';
part 'listview_event.dart';
part 'listview_bloc.freezed.dart';

@lazySingleton
class ListviewBloc extends Bloc<ListviewEvent, ListviewState> {
  ListviewBloc() : super(const ListviewState.initial()) {}
}
