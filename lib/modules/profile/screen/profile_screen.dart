import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/profile/controller/profile_controller.dart';
import 'package:flutter_firebase/widget/custom_appbar.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _profileCon = Get.put(ProfileController());
  @override
  void initState() {
    _profileCon.fetchAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Profile'),
      ),
      body: Obx(
        () => _profileCon.isLoadingAllData.value
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Image.network('${_profileCon.profileData[0].photo}'),
                  Text('Hello: ${_profileCon.profileData[0].name}'),
                ],
              ),
      ),
    );
  }
}
