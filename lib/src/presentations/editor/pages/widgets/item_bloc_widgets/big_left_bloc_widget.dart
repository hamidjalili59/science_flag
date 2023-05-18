import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BigLeftBlocWidget extends StatelessWidget {
  const BigLeftBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.h),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  width: 0.5.sw,
                  height: 100.h,
                  child: Padding(
                    padding: EdgeInsets.all(22.0.r),
                    child: SvgPicture.asset(
                      SVGAssets.addIcon,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.5.sw,
                  height: 100.h,
                  child: Padding(
                    padding: EdgeInsets.all(22.0.r),
                    child: SvgPicture.asset(
                      SVGAssets.addIcon,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 0.5.sw,
              height: 200.h,
              child: Padding(
                padding: EdgeInsets.all(8.0.r),
                child: SvgPicture.asset(
                  SVGAssets.addIcon,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
