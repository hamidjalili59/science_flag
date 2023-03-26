import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class FunctionHelper {
  static final FunctionHelper _singleton = FunctionHelper._();

  factory FunctionHelper() => _singleton;

  FunctionHelper._();
  // make one instance of Logger Class
  Logger logger = Logger();

  void logMessage(String message) {
    logger.i(message);
  }

// funtion for showing ErrorDetails
  void logErrorDetailMessage(Object errorExep,
      {String? libraryName, String bodyMessage = ''}) {
    FlutterErrorDetails(
      exception: errorExep,
      library: libraryName,
      context: ErrorSummary(bodyMessage),
    );
  }

  // void displaySnackBar({
  //   required String message,
  //   bool isFailureMessage = false,
  // }) {
  //   BuildContext context = getIt.get<AppRouter>.navigatorKey.currentContext!;
  //   final snackBar = SnackBar(
  //     padding: EdgeInsets.symmetric(vertical: 8.h),
  //     content: Text(
  //       message.isNotEmpty ? message : 'Empty',
  //       textAlign: TextAlign.center,
  //       style: TextStyle(
  //           color: isFailureMessage ? Colors.white70 : Colors.black54,
  //           fontWeight: FontWeight.w900,
  //           fontSize: 16.r),
  //     ),
  //     backgroundColor: isFailureMessage ? Colors.redAccent : Colors.greenAccent,
  //   );

  //   ScaffoldMessenger.of(context)
  //     ..clearSnackBars()
  //     ..showSnackBar(snackBar);
  // }

  // Future<bool> onWillPop() async {
  //   DateTime now = DateTime.now();
  //   if (GeneralConstants.currentBackPressTime == null ||
  //       now.difference(GeneralConstants.currentBackPressTime!) >
  //           const Duration(seconds: 2)) {
  //     GeneralConstants.currentBackPressTime = now;
  //     FunctionHelper().displaySnackBar(
  //         message: 'برای خروج دوباره کلیک کنید.', isFailureMessage: false);
  //     return Future.value(false);
  //   }
  //   await Future<void>.delayed(const Duration(milliseconds: 250));
  //   return Future.value(true);
  // }
}
