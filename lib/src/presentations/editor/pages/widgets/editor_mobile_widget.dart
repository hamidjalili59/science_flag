import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/quill_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// قرار شد یه تنظیمات ویو پورت بزارم که داخلش
/// بتونه تنظیم کنه که چطور بهش نمایش بده با اسکرول
/// یا دونه ای با دکمه بعد و قبلی یا با یک نسبت خاصی
class EditorMobileWidget extends StatelessWidget {
  EditorMobileWidget({super.key, required this.bloc});
  final List<quill.QuillController> controllerList = List.empty(growable: true);
  final int controllerPosition = 0;
  final EditorBloc bloc;
  @override
  Widget build(BuildContext context) {
    if (controllerList.isEmpty) {
      controllerList.add(quill.QuillController.basic());
    }
    return SizedBox(
      child: Stack(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 0.17.sh),
                    Container(
                      width: 0.9.sw,
                      height: 0.8.sh,
                      color: Colors.white,
                      child: BlocBuilder<EditorBloc, EditorState>(
                        bloc: bloc,
                        builder: (context, state) {
                          return state.maybeWhen(
                            idle: (isLoading, stackWidgetData) {
                              return Stack(
                                children: List.generate(
                                  stackWidgetData.length,
                                  (index) => Transform.translate(
                                    offset: (stackWidgetData.values
                                        .toList()[index])['offset'],
                                    child: SizedBox(
                                      width: (stackWidgetData.values
                                          .toList()[index])['width'],
                                      height: (stackWidgetData.values
                                          .toList()[index])['height'],
                                      child: InkWell(
                                        child: QuillBoxWidget(
                                          index: index,
                                          stackWidgetData: stackWidgetData,
                                          bloc: bloc,
                                        ),
                                      ),
                                    ),
                                  ),
                                ).toList(),
                              );
                            },
                            orElse: () {
                              return const SizedBox();
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 0.01.sh),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              color: Theme.of(context).colorScheme.onBackground,
              height: 0.15.sh,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: quill.QuillToolbar.basic(
                  embedButtons: FlutterQuillEmbeds.buttons(
                    showVideoButton: true,
                  ),
                  showCenterAlignment: true,
                  toolbarIconCrossAlignment: WrapCrossAlignment.center,
                  controller: controllerList[controllerPosition],
                  iconTheme: quill.QuillIconTheme(
                    iconUnselectedColor: Colors.white,
                    iconUnselectedFillColor:
                        Theme.of(context).colorScheme.onBackground,
                    iconSelectedFillColor: Colors.blueAccent,
                    iconSelectedColor: Colors.white,
                    borderRadius: 8.r,
                    disabledIconColor: Colors.cyan,
                    disabledIconFillColor: Colors.white,
                  ),
                  dialogTheme: quill.QuillDialogTheme(
                    labelTextStyle: const TextStyle(color: Colors.white),
                    dialogBackgroundColor:
                        Theme.of(context).colorScheme.onBackground,
                    inputTextStyle: const TextStyle(color: Colors.deepOrange),
                  ),
                  axis: Axis.horizontal,
                  showSmallButton: false,
                  showLeftAlignment: false,
                  showJustifyAlignment: false,
                  multiRowsDisplay: false,
                  showAlignmentButtons: false,
                  showBoldButton: false,
                  toolbarIconAlignment: WrapAlignment.center,
                  toolbarIconSize: 24.r,
                  showBackgroundColorButton: false,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onBackground,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 1.5,
                    )
                  ]),
              width: 1.sw,
              height: 0.08.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: EdgeInsets.all(4.0.r),
                        child: SizedBox(
                          width: 40.w,
                          child: Image.asset(
                            PngAssets.bio_1,
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 110.w,
                    child: Text(
                      'Editor page',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0.r),
                    child: SizedBox(
                      width: 30.w,
                      child: IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Image.asset(
                            PngAssets.search_3,
                            color: Theme.of(context).colorScheme.surface,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0.r),
                    child: SizedBox(
                      width: 50.w,
                      child: IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Image.asset(
                          PngAssets.slide_2,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
