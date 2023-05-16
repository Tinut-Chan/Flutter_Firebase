import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/home/controller/home_screen_controllers.dart';
import 'package:flutter_firebase/utils/notification_helper.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  final int? totalNotification;
  const HomeScreen({Key? key, this.totalNotification}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    NotificationHelper.initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
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
              child: IconButton(
                icon: const Icon(Icons.message_rounded),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: context.height,
                        color: Colors.transparent,
                      );
                    },
                  );
                },
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Expanded(
            //   child: CustomSlider(
            //     margin: EdgeInsets.zero,
            //     padEnds: false,
            //     viewportFraction: 0.8,
            //   ),
            // ),
            // const Expanded(
            //   child: Data(),
            // ),
            //   child: Text('Hello'),
            // ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  NotificationHelper.showNotification(
                      title: 'Flutter', body: 'I love you', payload: 'haha');
                },
                child: const Text('Get Data'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            context: context,
            builder: (context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        initialValue: homeController.courseId.value,
                        onChanged: (value) {
                          homeController.courseId.value = value;
                        },
                        onTapOutside: (_) =>
                            FocusManager().primaryFocus?.unfocus(),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50.0),
                      ),
                      onPressed: () {
                        homeController.onFavorite();
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Text('Add'),
      ),
    );
  }
}
