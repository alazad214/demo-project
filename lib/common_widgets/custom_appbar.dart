import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.onCallBack,
    this.leadingVisible = true,
    this.actions,
  });

  final String title;
  final onCallBack;
  final bool leadingVisible;
  final actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Visibility(
        visible: !leadingVisible,
        child: Padding(
          padding: EdgeInsets.all(12.sp),
          child: InkWell(
            onTap: onCallBack,
            child: SvgPicture.asset(
              Assets.icons.backButton,
              height: 32.h,
              width: 32.w,
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.c4B4B4B,
      titleSpacing: 2.w,
      title: Text(
        title,
        style: TextFontStyle.headline18w500c000000,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
