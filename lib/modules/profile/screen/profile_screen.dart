import 'package:flutter/material.dart';
import 'package:flutter_firebase/widget/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Profile'),
      ),
    );
  }
}
