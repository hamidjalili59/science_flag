import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FourBlocWidget extends StatelessWidget {
  const FourBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: SizedBox(
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
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
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
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: SizedBox(
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
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
