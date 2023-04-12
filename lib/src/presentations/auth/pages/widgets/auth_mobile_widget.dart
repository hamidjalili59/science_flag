import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/auth/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthMobileWidget extends StatelessWidget {
  AuthMobileWidget({super.key});

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 1.sh,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(26.0.r),
                child: SizedBox(
                  width: 60,
                  height: 35,
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Sign up',
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                      )),
                ),
              ),
            ),
            SizedBox(height: 0.12.sh),
            Text(
              'Login',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                  ),
            ),
            SizedBox(height: 0.15.sh),
            SimpleTextFieldWidget(
              obscureText: false,
              backgroundColor: Colors.transparent,
              controller: emailController,
              size: const Size(0.7, 80),
            ),
            SimpleTextFieldWidget(
              obscureText: true,
              backgroundColor: Colors.transparent,
              controller: passwordController,
              size: const Size(0.7, 80),
            ),
            MaterialButton(
              color: Theme.of(context).colorScheme.onBackground,
              onPressed: () async {
                StaticDependencies.authbloc.add(
                  AuthEvent.login(
                      emailController.text, passwordController.text),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.h,
                width: 0.58.sw,
                child: Text(
                  'Login',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  /// size value had two value width and height , width in sw and height in h scale
  /// sh is a double beetween 0 to 1 and h is a int value to set pixels scale
  final Size size;
  final Color backgroundColor;
  final bool obscureText;
  const SimpleTextFieldWidget({
    super.key,
    required this.controller,
    required this.size,
    required this.backgroundColor,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width.sw,
      height: size.height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: backgroundColor,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(
          gapPadding: 50.w,
          borderRadius: BorderRadius.circular(12.r),
        )),
      ),
    );
  }
}
