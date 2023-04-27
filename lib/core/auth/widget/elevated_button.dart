// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    this.icons,
    this.labelName,
    this.onPressed,
    this.colors,
    this.textStyle,
  }) : super(key: key);
  final IconData? icons;
  final String? labelName;
  final VoidCallback? onPressed;
  final Color? colors;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50.0),
          backgroundColor: colors,
          elevation: 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          textStyle: textStyle),
      icon: FaIcon(icons),
      label: Text(
        '$labelName',
      ),
      onPressed: onPressed,
    );
  }
}
