import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/presentations/intro/bloc/intro_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    Key? key,
    required this.introBloc,
  }) : super(key: key);
  final IntroBloc introBloc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80.h),
        SizedBox(
          width: 1.sw,
          height: 0.72.sh,
          child: PageView(
            onPageChanged: (s) {
              introBloc.add(IntroEvent.changePages(s));
            },
            children: [
              IntroPageWidget(
                  image: PngAssets.intro_1,
                  header: 'Control your daily energy expenses',
                  title:
                      "Always save your electrical energy\nneeds to protect the earth"),
              IntroPageWidget(
                  image: PngAssets.intro_2,
                  header: 'Control your daily energy expenses',
                  title:
                      "Always save your electrical energy\nneeds to protect the earth"),
              IntroPageWidget(
                  image: PngAssets.intro_3,
                  header: 'Control your daily energy expenses',
                  title:
                      "Always save your electrical energy\nneeds to protect the earth"),
            ],
          ),
        )
      ],
    );
  }
}

class IntroPageWidget extends StatelessWidget {
  final String image;
  final String header;
  final String title;
  const IntroPageWidget(
      {Key? key,
      required this.image,
      required this.header,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 1.sw,
        height: 0.5.sh,
        child: Image.asset(image),
      ),
      SizedBox(height: 30.h),
      SizedBox(
        height: 50.h,
        width: 0.9.sw,
        child: Text(
          header,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white70,
              fontSize: 22.r,
              fontWeight: FontWeight.w800),
          textDirection: TextDirection.rtl,
        ),
      ),
      const SizedBox(height: 15),
      SizedBox(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white70,
              fontSize: 16.r,
              fontWeight: FontWeight.w300),
        ),
      ),
    ]);
  }
}
