import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
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
        create: (_) => getIt.get<EditorPageBloc>(),
        child: Scaffold(
          backgroundColor: GeneralConstants.backgroundColor,
          appBar: AppBar(
            leadingWidth: 50.w,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SvgPicture.asset(SVGAssets.slide),
            ),
            title: Text(
              'Editor Page',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  getIt
                      .get<EditorPageBloc>()
                      .add(const EditorPageEvent.saveDocument());
                },
                child: Icon(
                  Icons.save_outlined,
                  size: 32.r,
                ),
              )
            ],
            backgroundColor: Theme.of(context).colorScheme.surface,
            toolbarHeight: 60.h,
          ),
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          body: ScreenUtil().screenWidth < 400
              ? EditorMobileWidget()
              : EditorMobileWidget(),
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
