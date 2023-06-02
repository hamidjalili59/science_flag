import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldCustomWidget extends StatelessWidget {
  const TextFieldCustomWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.maxLength,
    required this.isLoading,
    required this.focusNode,
    required this.onSubmitted,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final int maxLength;
  final bool isLoading;
  final FocusNode focusNode;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 0.75.sw,
      height: 0.075.sh,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(145, 229, 227, 237),
              blurRadius: 20,
              spreadRadius: 8,
              offset: Offset(1, 3)),
        ],
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.black12, width: 0.5.w),
      ),
      padding: EdgeInsets.symmetric(horizontal: 18.r),
      child: isLoading
          ? Text(
              '... لطفا منتظر بمانید',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'IranSans',
                  fontSize: 16.r,
                  fontWeight: FontWeight.w500),
            )
          : TextField(
              autofocus: false,
              focusNode: focusNode,
              style: TextStyle(
                fontFamily: 'IranSans',
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 16.r,
              ),
              keyboardType: TextInputType.phone,
              maxLength: maxLength,
              controller: controller,
              textAlign: TextAlign.center,
              onSubmitted: onSubmitted,
              decoration: InputDecoration(
                counter: const SizedBox(),
                contentPadding: EdgeInsets.only(top: 12.r),
                hintText: hintText,
                hintStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: 16.r,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'IranSans'),
                hintTextDirection: TextDirection.rtl,
                alignLabelWithHint: true,
                border: InputBorder.none,
              ),
            ),
    );
  }
}
