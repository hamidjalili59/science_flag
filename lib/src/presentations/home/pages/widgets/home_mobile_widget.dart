import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        width: 1.sw,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HomeAppbarWidget(),
              HomeHeaderWidget(),
              TabbarWidget(),
              HomeGridViewWidget(),
            ],
          ),
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
      width: 0.9.sw,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 0.3.sh,
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
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            '$courseNumber courses',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            '$noteNumber notes',
            style: Theme.of(context).textTheme.titleSmall,
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
      width: 0.9.sw,
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Subject',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            'See all',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.w400),
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
      width: 0.9.sw,
      height: 0.25.sh,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(18.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Notes',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Last seen yesterday',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w500,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: 100.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Text(
                      'Add Course',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 1,
            child: Image.asset(PngAssets.bag),
          ),
        ],
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
        width: 0.9.sw,
        height: 100.h,
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
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Find your course',
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(
                Icons.search_rounded,
                size: 36.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}