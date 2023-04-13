import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/editor/pages/widgets/editor_mobile_widget.dart';
import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:custom_floating_action_button/custom_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: CustomFloatingActionButton(
          type: CustomFloatingActionButtonType.verticalUp,
          spaceFromRight: 16.w,
          spaceFromBottom: 26.h,
          closeFloatingActionButton: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.onBackground,
          ),
          openFloatingActionButton: CircleAvatar(
            child: Icon(
              Icons.add_rounded,
              size: 32.r,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          options: [
            InkWell(
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
                child: Icon(
                  Icons.text_fields_sharp,
                  size: 32.r,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            CircleAvatar(
              child: Icon(
                Icons.image,
                size: 32.r,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            InkWell(
              onTap: () async {
                //TODO: impelement Widget Draggable
                await CunningDocumentScanner.getPictures() ?? [];
              },
              child: CircleAvatar(
                child: Icon(
                  Icons.camera,
                  size: 32.r,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
          ],
          body: Scaffold(
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
