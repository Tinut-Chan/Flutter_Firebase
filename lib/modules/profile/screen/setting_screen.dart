import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/profile/controller/profile_controller.dart';
import 'package:flutter_firebase/modules/profile/widget/custom_setting_item.dart';
import 'package:flutter_firebase/modules/profile/widget/footer_setting.dart';
import 'package:flutter_firebase/widget/bottom_sheet.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

bool _isValue = false;

final _homeCon = Get.find<ProfileController>();

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                const SettingItem(
                  contentLabel: 'CONTENT',
                  icon: Icons.favorite_border_outlined,
                  labelName: 'Favourite',
                  isSwitch: false,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18.0,
                    ),
                  ],
                ),
                const Divider(),
                SettingItem(
                  onTap: () {
                    setState(() {
                      _isValue = !_isValue;
                    });
                  },
                  icon: Icons.download,
                  labelName: 'Download',
                  isSwitch: true,
                  onChanged: (p) {
                    setState(() {
                      _isValue = p;
                      _homeCon.configuAppVersion();
                    });
                  },
                  switchValue: _isValue,
                ),
                const Divider(),
                SettingItem(
                  onTap: () {
                    customBottomSheet(context);
                  },
                  icon: Icons.language,
                  labelName: 'Language',
                  isSwitch: false,
                  children: const [
                    Text('English'),
                    SizedBox(width: 12.0),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18.0,
                    )
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
          const Center(child: FooterSetting()),
        ],
      ),
    );
  }
}
