import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuillBoxWidget extends StatelessWidget {
  const QuillBoxWidget({
    super.key,
    required this.index,
    required this.stackWidgetData,
    required this.bloc,
    required this.controller,
    required this.fNode,
  });
  final int index;
  final EditorItemList stackWidgetData;
  final EditorBloc bloc;
  final quill.QuillController controller;
  final FocusNode fNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: quill.QuillEditor(
        textSelectionControls: MaterialTextSelectionControls(),
        onTapDown: (details, p1) {
          bloc.add(EditorEvent.switchPosition(index, 'text'));
          return false;
        },
        controller: controller,
        focusNode: fNode,
        scrollController: ScrollController(),
        scrollable: false,
        padding: EdgeInsets.all(0.r),
        autoFocus: false,
        readOnly: false,
        textCapitalization: TextCapitalization.words,
        enableSelectionToolbar: true,
        paintCursorAboveText: true,
        expands: false,
      ),
    );
  }
}
