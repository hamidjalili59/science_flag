import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/config/constants/svg_assets.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: const SingleChildScrollView(
        child: Column(
          children: [
            HomeAppbarWidget(),
            HomeHeaderWidget(),
            TabbarWidget(),
            HomeGridViewWidget(),
          ],
        ),
      ),
    );
  }
}

class HomeGridViewWidget extends StatelessWidget {
  const HomeGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.88.sw,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 0.26.sh,
            mainAxisSpacing: 15.h,
            crossAxisSpacing: 15.w),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 16.r),
        children: [
          HomeGridViewItemWidget(
            title: 'Mathematics',
            courseNumber: 251,
            noteNumber: 5,
            image: PngAssets.math_5,
          ),
          HomeGridViewItemWidget(
            title: 'Chemistry',
            courseNumber: 22,
            noteNumber: 0,
            image: PngAssets.shimi_3,
          ),
          HomeGridViewItemWidget(
            title: 'Biology',
            courseNumber: 16,
            noteNumber: 0,
            image: PngAssets.bio_3,
          ),
          HomeGridViewItemWidget(
            title: 'Language',
            courseNumber: 150,
            noteNumber: 0,
            image: PngAssets.lang_5,
          ),
        ],
      ),
    );
  }
}

class HomeGridViewItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final int courseNumber;
  final int noteNumber;
  const HomeGridViewItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.courseNumber,
    required this.noteNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(16.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 75.h,
            child: Image.asset(image),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          Text(
            '$courseNumber courses',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          Text(
            '$noteNumber notes',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
        ],
      ),
    );
  }
}

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.87.sw,
      height: 75.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Subject',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
          Text(
            'See all',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
        ],
      ),
    );
  }
}

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.88.sw,
      height: 0.23.sh,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(18.r)),
      child: InkWell(
        onTap: () {
          StaticDependencies.autoRoutes.pushNamed('/notes');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notes',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: GeneralConstants.backgroundColor,
                                fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Last seen yesterday',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontWeight: FontWeight.w500,
                              ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: 120.w,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: GeneralConstants.backgroundColor,
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                      child: Text(
                        'Add Course',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Theme.of(context).colorScheme.surface,
                            ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: SvgPicture.asset(SVGAssets.bag),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: SizedBox(
        width: 0.88.sw,
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 0.65.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                  ),
                  Text(
                    'Find your course',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.bold)
                        .copyWith(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 55.w,
              height: 55.w,
              padding: EdgeInsets.all(13.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              child: SvgPicture.asset(
                SVGAssets.search,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
