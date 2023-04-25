import 'dart:io';
import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/quill_box_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ndialog/ndialog.dart';

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
          idle: (isLoading, stackWidgetData, selectedPos, stackWidgetList) {
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                color: Colors.white,
                height: 1.sh,
                child: ListView.builder(
                  itemCount: (stackWidgetData ??
                              EditorItemList([], EditorItemLayoutType.oneBloc))
                          .items
                          .length +
                      1,
                  itemBuilder: (context, index) {
                    if (index <
                        (stackWidgetData ??
                                EditorItemList(
                                    [], EditorItemLayoutType.oneBloc))
                            .items
                            .length) {
                      if ((stackWidgetData ??
                                  EditorItemList(
                                      [], EditorItemLayoutType.oneBloc))
                              .items[index]
                              .type ==
                          EditorItemType.text) {
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
                              controller: (stackWidgetData ??
                                      EditorItemList(
                                          [], EditorItemLayoutType.oneBloc))
                                  .items[index]
                                  .data,
                              fNode: (stackWidgetData ??
                                      EditorItemList(
                                          [], EditorItemLayoutType.oneBloc))
                                  .items[index]
                                  .focusNode,
                              stackWidgetData: (stackWidgetData ??
                                  EditorItemList(
                                      [], EditorItemLayoutType.oneBloc)),
                              bloc: bloc,
                            ),
                          ),
                        );
                      } else if ((stackWidgetData ??
                                  EditorItemList(
                                      [], EditorItemLayoutType.oneBloc))
                              .items[index]
                              .type ==
                          EditorItemType.image) {
                        return Container(
                          color: Colors.blueAccent,
                          width: 1.sw,
                          constraints: const BoxConstraints(minHeight: 25),
                          child: Image.file(File((stackWidgetData ??
                                  EditorItemList(
                                      [], EditorItemLayoutType.oneBloc))
                              .items[index]
                              .data)),
                        );
                      } else {
                        return Container(
                          color: Colors.greenAccent,
                          width: 1.sw,
                          constraints: const BoxConstraints(minHeight: 25),
                          child: Text((stackWidgetData ??
                                  EditorItemList(
                                      [], EditorItemLayoutType.oneBloc))
                              .items[index]
                              .data),
                        );
                      }
                    } else {
                      return InkWell(
                        onTap: () {
                          NDialog(
                            dialogStyle: DialogStyle(
                              contentPadding: EdgeInsets.all(8.r),
                              backgroundColor: const Color(0xffe6eaec),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(top: 26.0.h),
                              child: Text(
                                'Layouts',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                      color:
                                          const Color.fromARGB(179, 39, 39, 39),
                                    ),
                              ),
                            ),
                            content: LayoutDialogWidget(bloc: bloc),
                          ).show(
                            context,
                            transitionType: DialogTransitionType.Shrink,
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(26.w),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16.r)),
                              height: 0.15.sh,
                              child: Icon(Icons.add_rounded, size: 42.r)),
                        ),
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

class LayoutDialogWidget extends StatelessWidget {
  final EditorBloc bloc;
  const LayoutDialogWidget({
    super.key,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> stackWidgetFake = {
      '0': {
        'adr': SVGAssets.layout1,
        'type': EditorItemLayoutType.oneBloc,
      },
      '1': {
        'adr': SVGAssets.layout2,
        'type': EditorItemLayoutType.twoBloc,
      },
      '2': {
        'adr': SVGAssets.layout3,
        'type': EditorItemLayoutType.threeBloc,
      },
      '3': {
        'adr': SVGAssets.layout4,
        'type': EditorItemLayoutType.bigLeftBloc,
      },
      '4': {
        'adr': SVGAssets.layout5,
        'type': EditorItemLayoutType.fourBloc,
      },
      '5': {
        'adr': SVGAssets.layout6,
        'type': EditorItemLayoutType.bigMiddle,
      },
    };
    return Container(
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.black12),
          color: const Color(0xffe6eaec),
          borderRadius: BorderRadius.circular(4.r),
        ),
        width: 0.8.sw,
        height: 0.7.sh,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.w,
            mainAxisSpacing: 15.w,
          ),
          itemCount: stackWidgetFake.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8.0.r),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  padding: EdgeInsets.all(26.r),
                  child: SvgPicture.asset(
                    stackWidgetFake[index.toString()]['adr'],
                    color: const Color.fromARGB(73, 39, 39, 39),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
