import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';

class QuillBoxWidget extends StatelessWidget {
  const QuillBoxWidget(
      {super.key, required this.index, required this.stackWidgetData});
  final int index;
  final Map<String, dynamic> stackWidgetData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: GestureDetector(
            onLongPressMoveUpdate: (details) {
              Map<String, dynamic> s = stackWidgetData;
              s.values.toList()[index]['offset'] = Offset(
                  details.localPosition.dx - 50,
                  details.localPosition.dy + 200);
              StaticDependencies.editorbloc.add(
                EditorEvent.updateTool('text', '$index', s),
              );
            },
            child: const SizedBox(
              width: 30,
              height: 30,
              child: CircleAvatar(
                child: Icon(
                  Icons.keyboard_double_arrow_right_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 18,
          child: GestureDetector(
            onLongPressMoveUpdate: (details) {},
            child: const Icon(
              Icons.arrow_outward_rounded,
              color: Colors.blueAccent,
            ),
          ),
        ),
        Positioned.fill(
          top: 35.h,
          left: 25.w,
          right: 25.w,
          child: SizedBox(
            child: DottedBorder(
              child: quill.QuillEditor(
                controller: quill.QuillController.basic(),
                focusNode: FocusNode(),
                scrollController: ScrollController(),
                scrollable: false,
                padding: EdgeInsets.all(0.r),
                autoFocus: false,
                readOnly: false,
                maxHeight: 0.1.sh,
                textCapitalization: TextCapitalization.words,
                enableSelectionToolbar: true,
                paintCursorAboveText: true,
                expands: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
