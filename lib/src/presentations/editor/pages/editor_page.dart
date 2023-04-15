import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/editor_mobile_widget.dart';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:custom_floating_action_button/custom_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndialog/ndialog.dart';

@RoutePage(name: 'editor')
class EditorPage extends StatelessWidget {
  EditorPage({super.key});
  final Map<String, dynamic> stackWidget = {};
  final EditorBloc bloc = StaticDependencies.editorbloc;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => bloc,
        child:
            // options: [
            // InkWell(
            //   onTap: () {
            //     if (stackWidget.isEmpty) {
            //       stackWidget['0'] = {
            //         'width': 200.0,
            //         'height': 100.0,
            //         'spaceRight': 250.0,
            //         'spaceTop': 250.0,
            //         'type': 'text',
            //         'offset': Offset.zero,
            //       };
            //     } else {
            //       stackWidget[stackWidget.keys.toList().length.toString()] = {
            //         'width': 250.0,
            //         'height': 150.0,
            //         'spaceRight': 250.0,
            //         'spaceTop': 250.0,
            //         'type': 'text',
            //         'offset': Offset.zero,
            //       };
            //     }

            //     bloc.add(EditorEvent.addTool('text', stackWidget));
            //     StaticDependencies.autoRoutes.pop();
            //   },
            //   child: CircleAvatar(
            //     child: Icon(
            //       Icons.text_fields_sharp,
            //       size: 32.r,
            //       color: Theme.of(context).colorScheme.onBackground,
            //     ),
            //   ),
            // ),
            // CircleAvatar(
            //   child: Icon(
            //     Icons.image,
            //     size: 32.r,
            //     color: Theme.of(context).colorScheme.onBackground,
            //   ),
            // ),
            // InkWell(
            //   onTap: () async {
            //     //TODO: impelement Widget Draggable
            //     await CunningDocumentScanner.getPictures() ?? [];
            //   },
            //   child: CircleAvatar(
            //     child: Icon(
            //       Icons.camera,
            //       size: 32.r,
            //       color: Theme.of(context).colorScheme.onBackground,
            //     ),
            //   ),
            // ),
            // ],
            CustomFloatingActionButton(
          openFloatingActionButton: const CircleAvatar(
            backgroundColor: Colors.indigo,
          ),
          closeFloatingActionButton: const CircleAvatar(
            backgroundColor: Colors.indigo,
          ),
          type: CustomFloatingActionButtonType.circular,
          spaceFromRight: 10,
          spaceFromBottom: 80,
          options: [
            const CircleAvatar(
              backgroundColor: Colors.cyanAccent,
            ),
            const CircleAvatar(
              backgroundColor: Colors.cyanAccent,
            ),
            CircleAvatar(
              backgroundColor: Colors.cyanAccent,
              child: InkWell(
                onTap: () {
                  if (stackWidget.isEmpty) {
                    stackWidget['0'] = {
                      'width': 200.0,
                      'height': 100.0,
                      'spaceRight': 250.0,
                      'spaceTop': 250.0,
                      'type': 'text',
                      'offset': Offset.zero,
                    };
                  } else {
                    stackWidget[stackWidget.keys.toList().length.toString()] = {
                      'width': 250.0,
                      'height': 150.0,
                      'spaceRight': 250.0,
                      'spaceTop': 250.0,
                      'type': 'text',
                      'offset': Offset.zero,
                    };
                  }
                  bloc.add(EditorEvent.addTool('text', stackWidget));
                  StaticDependencies.autoRoutes.pop();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  child: Icon(
                    Icons.text_fields_sharp,
                    size: 32.r,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.cyanAccent,
              child: Icon(
                Icons.image,
                size: 32.r,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.cyanAccent,
              child: InkWell(
                onTap: () async {
                  //TODO: impelement Widget Draggable
                  await CunningDocumentScanner.getPictures() ?? [];
                },
                child: CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  child: Icon(
                    Icons.camera,
                    size: 32.r,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
            ),
          ],
          body: Scaffold(
            appBar: AppBar(
              leadingWidth: 50.w,
              leading: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(PngAssets.slide_2),
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
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 55.h,
                  width: 1.sw,
                  child: Row(
                    children: [
                      AppbarEditorPageWidget(image: PngAssets.mathNote),
                      AppbarEditorPageWidget(image: PngAssets.bio_3),
                      AppbarEditorPageWidget(image: PngAssets.lang_3),
                      AppbarEditorPageWidget(image: PngAssets.search_2),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            drawer: Drawer(
              elevation: 10,
              backgroundColor: Theme.of(context).colorScheme.onBackground,
              width: 120.w,
              child: ListView(
                children: [
                  SizedBox(
                    height: 50.h,
                    child: const DrawerHeader(
                      child: Text('Slide Menu'),
                    ),
                  ),
                ],
              ),
            ),
            body: ScreenUtil().screenWidth < 400
                ? EditorMobileWidget(
                    bloc: bloc,
                  )
                : EditorMobileWidget(bloc: bloc),
          ),
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
