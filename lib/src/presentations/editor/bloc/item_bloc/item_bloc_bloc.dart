import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'item_bloc_state.dart';
part 'item_bloc_event.dart';
part 'item_bloc_bloc.freezed.dart';

@lazySingleton
class ItemBlocBloc extends Bloc<ItemBlocEvent, ItemBlocState> {
  ItemBlocBloc() : super(const ItemBlocState.initial()) {}
}
