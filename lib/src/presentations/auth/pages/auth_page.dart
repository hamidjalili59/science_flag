import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/auth/bloc/auth_bloc.dart';
import 'package:base_project/src/presentations/auth/widgets/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'login')
class AuthPage extends StatelessWidget {
  AuthPage({super.key});
  final FocusNode _codefocusNode = FocusNode();
  final FocusNode _numberPhonefocusNode = FocusNode();
  final TextEditingController _numberPhoneController =
      TextEditingController(text: '');
  final TextEditingController _codeController = TextEditingController(text: '');
  final AuthBloc _authBloc = getIt.get<AuthBloc>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralConstants.backgroundColor!,
        body: BlocProvider<AuthBloc>(
          create: (__) => _authBloc,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1.sh,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 0.75.sw,
                          height: 0.36.sh,
                          child: Image(
                            image: AssetImage(PngAssets.logoIcon),
                            color: const Color.fromARGB(230, 255, 255, 255),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 1.sw,
                          height: 0.1.sh,
                          child: Text(
                            'شماره خود را برای احراز هویت وارد کنید.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'IranSans',
                              fontSize: 12.r,
                              fontWeight: FontWeight.w300,
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        failure: (failure, message) {
                          FunctionHelper().displaySnackBar(
                            message: 'اتصال خود با اینترنت را بررسی نمایید',
                            isFailureMessage: true,
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        otpHandshakeSuccess: (otpHandshakeResponse, isLoading) {
                          _codefocusNode.requestFocus();
                          return SizedBox(
                            width: 1.sw,
                            height: 0.3.sh,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextFieldCustomWidget(
                                      onSubmitted: (value) {
                                        _authBloc.add(
                                          AuthEvent.cacheAuthData(
                                            OtpVerifyResponse(
                                              jwt: GeneralConstants.jwt,
                                              phoneNumber: double.parse(
                                                _numberPhoneController.text,
                                              ),
                                            ),
                                          ),
                                        );
                                        Future.delayed(
                                                const Duration(seconds: 1))
                                            .then((value) => getIt
                                                .get<AppRouter>()
                                                .pushNamed('/splash_page'));
                                      },
                                      hintText: 'کد تایید',
                                      isLoading: isLoading,
                                      focusNode: _codefocusNode,
                                      maxLength: 4,
                                      controller: _codeController),
                                  SizedBox(height: 40.h),
                                  InkWell(
                                    onTap: () {
                                      _authBloc.add(
                                        AuthEvent.cacheAuthData(
                                          OtpVerifyResponse(
                                            jwt: GeneralConstants.jwt,
                                            phoneNumber: double.parse(
                                              _numberPhoneController.text,
                                            ),
                                          ),
                                        ),
                                      );
                                      Future.delayed(const Duration(seconds: 1))
                                          .then((value) => getIt
                                              .get<AppRouter>()
                                              .pushNamed('/splash_page'));
                                    },
                                    child: Container(
                                      width: 0.75.sw,
                                      height: 0.075.sh,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  145, 255, 113, 110),
                                              blurRadius: 20,
                                              spreadRadius: 1,
                                              offset: Offset(1, 3)),
                                        ],
                                        color: const Color.fromARGB(
                                            255, 245, 103, 100),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Center(
                                        child: isLoading
                                            ? const CircularProgressIndicator(
                                                color: Colors.greenAccent,
                                                backgroundColor: Colors.black,
                                              )
                                            : Text(
                                                'تایید',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.r,
                                                    fontWeight: FontWeight.w900,
                                                    fontFamily: 'IranSans'),
                                              ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 35.h),
                                ],
                              ),
                            ),
                          );
                        },
                        otpVerifySuccess: (verifyResponse) {
                          return const Center(child: Text('verify'));
                        },
                        idle: (isLoading) {
                          _numberPhonefocusNode.requestFocus();
                          return SizedBox(
                            width: 1.sw,
                            height: 0.3.sh,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextFieldCustomWidget(
                                      onSubmitted: (p0) {
                                        // _authBloc.add(
                                        //   AuthEvent.otpHandshake(
                                        //     double.parse(
                                        //         _numberPhoneController.text),
                                        //   ),
                                        // );
                                        Future.delayed(
                                                const Duration(seconds: 1))
                                            .then((value) => getIt
                                                .get<AppRouter>()
                                                .pushNamed('/home'));
                                      },
                                      hintText: 'شماره‌تلفن  (09123456789)',
                                      isLoading: isLoading,
                                      focusNode: _numberPhonefocusNode,
                                      maxLength: 11,
                                      controller: _numberPhoneController),
                                  SizedBox(height: 40.h),
                                  InkWell(
                                    onTap: () {
                                      Future.delayed(const Duration(seconds: 1))
                                          .then((value) => getIt
                                              .get<AppRouter>()
                                              .pushNamed('/home'));
                                      // _authBloc.add(
                                      //   AuthEvent.otpHandshake(
                                      //     double.parse(
                                      //         _numberPhoneController.text),
                                      //   ),
                                      // );
                                    },
                                    child: Container(
                                      width: 0.75.sw,
                                      height: 0.075.sh,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  145, 110, 255, 129),
                                              blurRadius: 20,
                                              spreadRadius: 1,
                                              offset: Offset(1, 3)),
                                        ],
                                        color: const Color.fromARGB(
                                            255, 100, 245, 156),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Center(
                                        child: isLoading
                                            ? const CircularProgressIndicator(
                                                color: Colors.greenAccent,
                                                backgroundColor: Colors.black,
                                              )
                                            : Text(
                                                'تایید',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.r,
                                                    fontWeight: FontWeight.w900,
                                                    fontFamily: 'IranSans'),
                                              ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 35.h),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
