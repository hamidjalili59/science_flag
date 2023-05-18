import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:flutter/material.dart';

import 'item_bloc_widgets/bloc_widgets.dart';

class CustomLayoutWidget extends StatelessWidget {
  final EditorItemList tileType;
  const CustomLayoutWidget({super.key, required this.tileType});

  final List<Widget> itemList = const [
    OneBlocWidget(),
    TwoBlocWidget(),
    ThreeBlocWidget(),
    BigLeftBlocWidget(),
    BigMiddleWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    print(EditorItemLayoutType
        .values[EditorItemLayoutType.values.indexOf(tileType.type)]);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: itemList[EditorItemLayoutType.values.indexOf(tileType.type)],
    );
  }
}
