part of 'item_bloc_bloc.dart';

@freezed
class ItemBlocEvent with _$ItemBlocEvent {
  const factory ItemBlocEvent.addTool(
    String widgetType,
    int position,
    // List<EditorItemList> stackWidget,
  ) = _AddTool;
}
