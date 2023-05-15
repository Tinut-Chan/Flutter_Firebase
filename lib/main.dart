import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/core/network/network_binding.dart';
import 'package:flutter_firebase/core/utils/notification_helper.dart';
import 'package:flutter_firebase/modules/home/controller/home_screen_controllers.dart';
import 'package:flutter_firebase/routes/router.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterLocalNotificationsPlugin();
  NotificationHelper.initial();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void unFocus(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    // if (!currentFocus.hasPrimaryFocus) {
    //   currentFocus.unfocus();
    // }
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  final loginController = Get.put(HomeController());
  @override
  void initState() {
    loginController.functionFetchToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.addKey(router.routerDelegate.navigatorKey);
    return GetMaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialBinding: NetworkBinding(),
    );
  }
}
