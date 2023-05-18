import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OneBlocWidget extends StatelessWidget {
  const OneBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.h),
      child: SizedBox(
        width: 1.sw,
        height: 150.h,
        child: Padding(
          padding: EdgeInsets.all(22.0.r),
          child: SvgPicture.asset(
            SVGAssets.addIcon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
