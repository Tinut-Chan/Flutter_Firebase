import 'package:flutter/material.dart';
import 'package:flutter_firebase/core/auth/login/controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _loginController = Get.put(LoginController());
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4),
        // () => context.go('/login/screen'),
        () async {
      if (_loginController.token.value != '') {
        context.go('/homescreen');
      } else {
        context.go('/login/screen');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
