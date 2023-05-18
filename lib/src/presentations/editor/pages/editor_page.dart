import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/editor_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(name: 'editor')
class EditorPage extends StatelessWidget {
  const EditorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (_) => getIt.get<EditorBloc>(),
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: 50.w,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SvgPicture.asset(SVGAssets.slide),
            ),
            title: const Text('Editor Page'),
            backgroundColor: Theme.of(context).colorScheme.surface,
            toolbarHeight: 60.h,
            bottom: PreferredSize(
              preferredSize: Size(1.sw, 55.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 1.5,
                          spreadRadius: 0.05,
                          offset: Offset(0, 3))
                    ]),
                height: 55.h,
                width: 1.sw,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: BlocBuilder<EditorBloc, EditorState>(
                    bloc: getIt.get<EditorBloc>(),
                    builder: (context, state) {
                      return state.maybeWhen(
                        idle:
                            (stackWidgetData, selectPosition, stackWidgetList) {
                          return const Row(
                            children: [
                              // SizedBox(
                              //   width: 1.sw,
                              //   height: 55.h,
                              //   child: quill.QuillToolbar.basic(
                              //     embedButtons: FlutterQuillEmbeds.buttons(
                              //       showImageButton: true,
                              //     ),
                              //     iconTheme: quill.QuillIconTheme(
                              //       disabledIconColor: Colors.black,
                              //       borderRadius: 6.r,
                              //       disabledIconFillColor: Colors.black,
                              //       iconSelectedFillColor: Theme.of(context)
                              //           .colorScheme
                              //           .background,
                              //       iconSelectedColor: Colors.white,
                              //       iconUnselectedFillColor: Colors.transparent,
                              //       iconUnselectedColor: Colors.black,
                              //     ),
                              //     color: Theme.of(context).colorScheme.surface,
                              //     axis: Axis.horizontal,
                              //     multiRowsDisplay: false,
                              //     controller:
                              //         // (stackWidgetData ??
                              //         //                 EditorItemList(
                              //         //                     [],
                              //         //                     EditorItemLayoutType
                              //         //                         .oneBloc))
                              //         //             .items
                              //         //             .isNotEmpty &&
                              //         //         (stackWidgetData ??
                              //         //                     EditorItemList(
                              //         //                         [],
                              //         //                         EditorItemLayoutType
                              //         //                             .oneBloc))
                              //         //                 .items[selectPosition]
                              //         //                 .type ==
                              //         //             EditorItemType.text
                              //         //     ? (stackWidgetData ??
                              //         //             EditorItemList(
                              //         //                 [],
                              //         //                 EditorItemLayoutType
                              //         //                     .oneBloc))
                              //         //         .items[selectPosition]
                              //         //         .data
                              //         // :
                              //         quill.QuillController.basic(),
                              //   ),
                              // )
                            ],
                          );
                        },
                        orElse: () {
                          return const SizedBox();
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          body: ScreenUtil().screenWidth < 400
              ? EditorMobileWidget(bloc: getIt.get<EditorBloc>())
              : EditorMobileWidget(bloc: getIt.get<EditorBloc>()),
        ),
      ),
    );
  }
}

class AppbarEditorPageWidget extends StatelessWidget {
  final String image;
  const AppbarEditorPageWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
      child: SizedBox(width: 30, child: Image.asset(image)),
    );
  }
}
