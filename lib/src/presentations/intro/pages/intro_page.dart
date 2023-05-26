import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/intro/bloc/intro_bloc.dart';
import 'package:base_project/src/presentations/intro/widgets/intro_widget.dart';
import 'package:base_project/src/presentations/intro/widgets/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'intro')
class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);

  final IntroBloc _introBloc = getIt.get<IntroBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralConstants.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              GeneralConstants.backgroundColor!,
              GeneralConstants.backgroundColor!.withOpacity(0.5)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: BlocProvider<IntroBloc>(
            create: (_) => _introBloc,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 1.sw,
                  height: 0.85.sh,
                  child: IntroWidget(introBloc: _introBloc),
                ),
                const PageState(),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    getIt.get<AppRouter>().pushNamed("/login");
                  },
                  child: Container(
                    width: 0.35.sw,
                    height: 0.06.sh,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(16)),
                    child: const Text(
                      'شروع برنامه',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'IranSans',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
