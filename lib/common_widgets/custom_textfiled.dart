import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomTextfiled extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables

  final hintText;
  final controller;
  final suffixIcon;
  final prefixIcon;
  final fillColor;
  final isenabled;
  final textColor;
  final isObsecure;
  final readOnly;
  final keyboardType;
  final maxLines;
  final initialValue;
  final onChanged;
  final onTap;
  final validator;
  const CustomTextfiled({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.fillColor,
    this.isenabled,
    this.textColor,
    this.isObsecure,
    this.readOnly,
    this.keyboardType,
    this.maxLines,
    this.initialValue,
    this.onChanged,
    this.onTap,
    this.validator,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObsecure,
      readOnly: readOnly ?? false,
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      initialValue: initialValue,
      onChanged: onChanged,
      onTap: onTap,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? AppColors.allPrimaryColor,

        //SUFFIX ICON...
        suffixIcon: suffixIcon == true
            ? const Icon(
                Icons.search,
                color: AppColors.allPrimaryColor,
              )
            : null,

        //PREFIX ICON...
        prefixIcon: prefixIcon == true
            ? const Icon(
                Icons.search,
                color: AppColors.allPrimaryColor,
              )
            : null,

        // CONTECT PADDING...
        contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),

        hintText: hintText,

        // HINTSTYLE...
        hintStyle: TextFontStyle.headline10Urbanist.copyWith(
          color: AppColors.allPrimaryColor,
        ),

        // BORDER...
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),

        //ENABLE BORDER...
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
          borderSide: BorderSide(
            color: AppColors.allPrimaryColor,
            width: 1.w,
          ),
        ),

        //FOCUSED BORDER...
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: BorderSide(
            color: AppColors.allPrimaryColor,
            width: 1.w,
          ),
        ),

        //DISABLED BORDER...
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
          borderSide: BorderSide(
            color: AppColors.allPrimaryColor,
            width: 1.w,
          ),
        ),

        //ERROR BORDER...
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.w,
          ),
        ),

        //FOCUESED ERROR BORDER...
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.w,
          ),
        ),
      ),
    );
  }
}
