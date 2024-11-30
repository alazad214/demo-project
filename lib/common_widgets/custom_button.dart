import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';
import '../helpers/ui_helpers.dart';

Widget customeButton({
  required String name,
  required VoidCallback onCallBack,
  required double height,
  required double minWidth,
  required double borderRadius,
  required Color color,
  required TextStyle textStyle,
  required BuildContext context,
  Color? borderColor,
  bool? isPrefixIcon = false,
  String? prefixIconPaht,
  bool iconWhiteColor = true,
}) {
  return MaterialButton(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    onPressed: onCallBack,
    height: height,
    minWidth: minWidth,
    shape: RoundedRectangleBorder(
      side: BorderSide(
          color: borderColor ?? AppColors.allPrimaryColor, width: 1.5.sp),
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    color: color,
    splashColor: Colors.white.withOpacity(0.4),
    child: isPrefixIcon == false
        ? Text(
            name,
            style: textStyle,
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                prefixIconPaht!,
                height: 15.h,
                width: 15.w,
                color: iconWhiteColor
                    ? AppColors.cFFFFFF
                    : AppColors.allPrimaryColor,
              ),
              UIHelper.horizontalSpace(8.w),
              Text(
                name,
                style: textStyle,
              )
            ],
          ),
  );
}
