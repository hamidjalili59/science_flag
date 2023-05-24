import 'package:base_project/src/presentations/intro/bloc/intro_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageState extends StatelessWidget {
  const PageState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget singlePageStateMethod(int page, int state) {
      return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: state == page
                ? Theme.of(context).colorScheme.onBackground
                : Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
            borderRadius: BorderRadius.circular(
              state == page ? 12 : 7,
            ),
          ),
          alignment: Alignment.center,
          width: state == page ? 23 : 14,
          height: 8);
    }

    return BlocBuilder<IntroBloc, IntroState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          currentPageIndex: (pageState) {
            return SizedBox(
              width: 0.3.sw,
              height: 0.05.sw,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                singlePageStateMethod(0, pageState),
                const SizedBox(width: 5),
                singlePageStateMethod(1, pageState),
                const SizedBox(width: 5),
                singlePageStateMethod(2, pageState),
              ]),
            );
          },
        );
      },
    );
  }
}
