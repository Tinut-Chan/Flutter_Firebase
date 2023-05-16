import 'package:flutter/material.dart';

customAppBar({
  final Widget? title,
  final List<Widget>? actions,
}) {
  return AppBar(
    title: title,
    actions: actions,
    // backgroundColor: Colors.white, // Customize background color
    elevation: 0, // Remove shadow
    centerTitle: true, // Center title horizontally
  );
}
