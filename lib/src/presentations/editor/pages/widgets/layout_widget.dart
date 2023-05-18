import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/big_left_bloc_widget.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/big_middle_widget.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/one_bloc_widget.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/three_bloc_widget.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/two_bloc_widget.dart';
import 'package:flutter/material.dart';

class CustomLayoutWidget extends StatelessWidget {
  final EditorItemList tileType;
  CustomLayoutWidget({super.key, required this.tileType});

  final List<Widget> itemList = [
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
