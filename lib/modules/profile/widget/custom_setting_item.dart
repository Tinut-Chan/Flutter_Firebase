import 'dart:io';

import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    this.children,
    this.labelName,
    this.icon,
    this.isSwitch = false,
    this.switchValue = false,
    this.onChanged,
    this.contentLabel,
    this.onTap,
  });

  final List<Widget>? children;
  final String? labelName;
  final IconData? icon;
  final bool? isSwitch;
  final bool switchValue;
  final Function(bool)? onChanged;
  final String? contentLabel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        contentLabel != null
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('$contentLabel'),
              )
            : const SizedBox(),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            height: 50.0,
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(icon),
                      const SizedBox(width: 12.0),
                      Text(labelName ?? ''),
                    ],
                  ),
                ),
                Row(
                  children: isSwitch == true
                      ? [
                          if (Platform.isIOS)
                            Switch.adaptive(
                              value: switchValue,
                              onChanged: onChanged,
                            ),
                        ]
                      : children!,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
