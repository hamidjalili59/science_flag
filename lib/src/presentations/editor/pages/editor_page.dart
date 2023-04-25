import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/models/editor_types.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/editor_mobile_widget.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill_extensions/flutter_quill_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(name: 'editor')
class EditorPage extends StatelessWidget {
  EditorPage({super.key});

  final EditorBloc bloc = StaticDependencies.editorbloc;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (_) => bloc,
        child: BlocBuilder<EditorBloc, EditorState>(
          bloc: bloc,
          builder: (context, state) {
            return state.maybeWhen(
              idle: (isLoading, stackWidgetData, selectPosition,
                  stackWidgetList) {
                // return CustomFloatingActionButton(
                // floatinButtonColor: Colors.white60,
                // openFloatingActionButton: CircleAvatar(
                //   child: Icon(
                //     Icons.add_rounded,
                //     size: 32.r,
                //     color: Theme.of(context).colorScheme.onBackground,
                //   ),
                // ),
                // closeFloatingActionButton: CircleAvatar(
                //   child: Icon(
                //     Icons.close,
                //     size: 24.r,
                //     color: Theme.of(context).colorScheme.onBackground,
                //   ),
                // ),
                // type: CustomFloatingActionButtonType.circular,
                // spaceFromRight: 10,
                // spaceFromBottom: 80,
                // options: [
                //   CircleAvatar(
                //     child: Icon(
                //       Icons.mic,
                //       size: 24.r,
                //       color: Theme.of(context).colorScheme.onBackground,
                //     ),
                //   ),
                //   SizedBox(
                //     child: CircleAvatar(
                //       child: Padding(
                //         padding: EdgeInsets.all(2.5.r),
                //         child: Image.asset(PngAssets.math_2),
                //       ),
                //     ),
                //   ),
                //   CircleAvatar(
                //     child: InkWell(
                //       onTap: () {
                //         if (stackWidgetData.isEmpty ||
                //             stackWidgetData.last['type'] != 'text') {
                //           bloc.add(
                //               EditorEvent.addTool('text', stackWidgetData));
                //         }
                //         StaticDependencies.autoRoutes.pop();
                //       },
                //       child: Padding(
                //         padding: EdgeInsets.all(2.5.r),
                //         child: Icon(
                //           Icons.text_fields_sharp,
                //           size: 24.r,
                //           color: Theme.of(context).colorScheme.onBackground,
                //         ),
                //       ),
                //     ),
                //   ),
                //   CircleAvatar(
                //     child: InkWell(
                //       onTap: () async {
                //         bloc.add(
                //             EditorEvent.addTool('camera', stackWidgetData));
                //         StaticDependencies.autoRoutes.pop();
                //       },
                //       child: CircleAvatar(
                //         child: Icon(
                //           Icons.camera,
                //           size: 24.r,
                //           color: Theme.of(context).colorScheme.onBackground,
                //         ),
                //       ),
                //     ),
                //   ),
                //   CircleAvatar(
                //     child: Icon(
                //       Icons.image,
                //       size: 24.r,
                //       color: Theme.of(context).colorScheme.onBackground,
                //     ),
                //   ),
                // ],
                return Scaffold(
                  appBar: AppBar(
                    leadingWidth: 50.w,
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      // child: Image.asset(PngAssets.slide_2),
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
                            bloc: bloc,
                            builder: (context, state) {
                              return state.maybeWhen(
                                idle: (isLoading, stackWidgetData,
                                    selectPosition, stackWidgetList) {
                                  return Row(
                                    children: [
                                      SizedBox(
                                        width: 1.sw,
                                        height: 55.h,
                                        child: quill.QuillToolbar.basic(
                                          embedButtons:
                                              FlutterQuillEmbeds.buttons(
                                            showImageButton: true,
                                          ),
                                          iconTheme: quill.QuillIconTheme(
                                            disabledIconColor: Colors.black,
                                            borderRadius: 6.r,
                                            disabledIconFillColor: Colors.black,
                                            iconSelectedFillColor:
                                                Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                            iconSelectedColor: Colors.white,
                                            iconUnselectedFillColor:
                                                Colors.transparent,
                                            iconUnselectedColor: Colors.black,
                                          ),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                          axis: Axis.horizontal,
                                          multiRowsDisplay: false,
                                          controller: (stackWidgetData ??
                                                          EditorItemList(
                                                              [],
                                                              EditorItemLayoutType
                                                                  .oneBloc))
                                                      .items
                                                      .isNotEmpty &&
                                                  (stackWidgetData ??
                                                              EditorItemList(
                                                                  [],
                                                                  EditorItemLayoutType
                                                                      .oneBloc))
                                                          .items[selectPosition]
                                                          .type ==
                                                      EditorItemType.text
                                              ? (stackWidgetData ??
                                                      EditorItemList(
                                                          [],
                                                          EditorItemLayoutType
                                                              .oneBloc))
                                                  .items[selectPosition]
                                                  .data
                                              : quill.QuillController.basic(),
                                        ),
                                      )
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
                  floatingActionButtonAnimator:
                      FloatingActionButtonAnimator.scaling,
                  body: ScreenUtil().screenWidth < 400
                      ? EditorMobileWidget(bloc: bloc)
                      : EditorMobileWidget(bloc: bloc),
                );
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
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
