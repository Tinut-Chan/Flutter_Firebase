import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/custom_textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomTextFieldWidget(
              isRequird: true,
              labelText: 'email',
            ),
            SizedBox(height: 15.0),
            CustomTextFieldWidget(),
          ],
        ),
      ),
    );
  }
}
