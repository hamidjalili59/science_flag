import 'dart:io';

import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/quill_box_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// قرار شد یه تنظیمات ویو پورت بزارم که داخلش
/// بتونه تنظیم کنه که چطور بهش نمایش بده با اسکرول
/// یا دونه ای با دکمه بعد و قبلی یا با یک نسبت خاصی

class EditorMobileWidget extends StatelessWidget {
  final EditorBloc bloc;
  const EditorMobileWidget({super.key, required this.bloc});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorBloc, EditorState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          idle: (isLoading, stackWidgetData, selectedPos) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                color: Colors.white,
                height: 1.sh,
                child: ListView.builder(
                  itemCount: stackWidgetData.length,
                  itemBuilder: (context, index) {
                    if (stackWidgetData[index]['type'] == 'text') {
                      return DottedBorder(
                        strokeCap: StrokeCap.butt,
                        strokeWidth: 1,
                        dashPattern: const [5],
                        color: selectedPos == index
                            ? Colors.black
                            : Colors.transparent,
                        child: Container(
                          color: Colors.transparent,
                          width: 1.sw,
                          constraints: const BoxConstraints(
                              minHeight: 25, maxHeight: 500),
                          child: QuillBoxWidget(
                            index: index,
                            controller: stackWidgetData[index]['data'],
                            fNode: stackWidgetData[index]['fn'],
                            stackWidgetData: stackWidgetData,
                            bloc: bloc,
                          ),
                        ),
                      );
                    } else if (stackWidgetData[index]['type'] == 'image') {
                      return Container(
                        color: Colors.blueAccent,
                        width: 1.sw,
                        constraints: const BoxConstraints(minHeight: 25),
                        child: Image.file(File(stackWidgetData[index]['data'])),
                      );
                    } else {
                      return Container(
                        color: Colors.greenAccent,
                        width: 1.sw,
                        constraints: const BoxConstraints(minHeight: 25),
                        child: Text(stackWidgetData[index]['data']),
                      );
                    }
                  },
                ),
              ),
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
