import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/home/pages/widgets/home_mobile_widget.dart';
import 'package:base_project/src/presentations/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'home')
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => getIt.get<AuthBloc>(),
        child: Scaffold(
          backgroundColor: GeneralConstants.backgroundColor,
          body: ScreenUtil().screenWidth < 400
              ? const HomeMobileWidget()
              : const HomeMobileWidget(),
        ),
      ),
    );
  }
}
