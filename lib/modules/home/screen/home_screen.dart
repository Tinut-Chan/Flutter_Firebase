import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button 2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button 3"),
          ),
        ],
      ),
    );
  }
}
