import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
    key: key,
  );

  final double? height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 91.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    mediaQueryData.size.width,
    height ?? 91.v,
  );

  Widget _getStyle() {
    switch (styleType) {
      case Style.bgShadow:
        return Container(
          height: height ?? 91.v,
          width: double.infinity, // Set a specific width or use double.infinity
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
        );
      case Style.bgShadow_1:
        return Container(
          height: 70.v,
          width: double.infinity, // Set a specific width or use double.infinity
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  2,
                ),
              ),
            ],
          ),
        );
      default:
        return Container(); // Return an empty container if no specific style is specified
    }
  }
}

enum Style {
  bgShadow,
  bgShadow_1,
}
