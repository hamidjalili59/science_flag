import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
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

  Future<XFile> imagePickerMethod() async {
    final ImagePicker picker = ImagePicker();
    return Future.value(await picker.pickImage(
        source: ImageSource.gallery, maxHeight: 1.sh, maxWidth: 1.sw));
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

  void displaySnackBar({
    required String message,
    bool isFailureMessage = false,
  }) {
    BuildContext context = getIt.get<AppRouter>().navigatorKey.currentContext!;
    final snackBar = SnackBar(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      content: Text(
        message.isNotEmpty ? message : 'Empty',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: isFailureMessage ? Colors.white70 : Colors.black54,
            fontWeight: FontWeight.w900,
            fontSize: 16.r),
      ),
      backgroundColor: isFailureMessage ? Colors.redAccent : Colors.greenAccent,
    );

    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  Future<bool> onWillPop() async {
    DateTime now = DateTime.now();
    if (GeneralConstants.currentBackPressTime == null ||
        now.difference(GeneralConstants.currentBackPressTime!) >
            const Duration(seconds: 2)) {
      GeneralConstants.currentBackPressTime = now;
      FunctionHelper().displaySnackBar(
          message: 'برای خروج دوباره کلیک کنید.', isFailureMessage: false);
      return Future.value(false);
    }
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return Future.value(true);
  }

  // Future<bool> checkInternetConnection() async {
  //   final connectivityResult = await (Connectivity().checkConnectivity());
  //   if (connectivityResult == ConnectivityResult.mobile) {
  //     // I am connected to a mobile network.
  //   } else if (connectivityResult == ConnectivityResult.wifi) {
  //     // I am connected to a wifi network.
  //   } else if (connectivityResult == ConnectivityResult.ethernet) {
  //     // I am connected to a ethernet network.
  //   } else if (connectivityResult == ConnectivityResult.vpn) {
  //     // I am connected to a vpn network.
  //     // Note for iOS and macOS:
  //     // There is no separate network interface type for [vpn].
  //     // It returns [other] on any device (also simulator)
  //   } else if (connectivityResult == ConnectivityResult.bluetooth) {
  //     // I am connected to a bluetooth.
  //   } else if (connectivityResult == ConnectivityResult.other) {
  //     // I am connected to a network which is not in the above mentioned networks.
  //   } else if (connectivityResult == ConnectivityResult.none) {
  //     // I am not connected to any network.
  //   }
  // }
}
