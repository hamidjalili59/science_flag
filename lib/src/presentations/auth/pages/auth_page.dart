import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/auth/pages/widgets/auth_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'login')
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => StaticDependencies.authbloc,
        child: Scaffold(
          backgroundColor: GeneralConstants.backgroundColor,
          body: ScreenUtil().screenWidth < 400
              ? AuthMobileWidget()
              : AuthMobileWidget(),
        ),
      ),
    );
  }
}
