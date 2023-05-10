import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/home/screen/get_data.dart';

class HomeScreen extends StatelessWidget {
  final int? totalNotification;
  const HomeScreen({Key? key, this.totalNotification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: totalNotification != null
                ? Text('$totalNotification')
                : const SizedBox(),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // Expanded(
          //   child: CustomSlider(
          //     margin: EdgeInsets.zero,
          //     padEnds: false,
          //     viewportFraction: 0.8,
          //   ),
          // ),
          Expanded(
            child: Data(),
          )
        ],
      ),
    );
  }
}
