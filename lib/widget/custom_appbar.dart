import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final Widget? title;
  final List<Widget>? actions;

  CustomAppBar({
    super.key,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
      // backgroundColor: Colors.white, // Customize background color
      elevation: 0, // Remove shadow
      centerTitle: true, // Center title horizontally
    );
  }
}
