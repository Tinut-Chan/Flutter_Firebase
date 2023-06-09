// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAcsG9VuCuey-gaccJbxknUIZF57COSZbc',
    appId: '1:136467448884:web:9a2f7e73472b433299b661',
    messagingSenderId: '136467448884',
    projectId: 'flutter-firebase-4f6f9',
    authDomain: 'flutter-firebase-4f6f9.firebaseapp.com',
    storageBucket: 'flutter-firebase-4f6f9.appspot.com',
    measurementId: 'G-R4NHL41TS8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzoU3XA-Atgn3BTXq3Ig2H9bMGSEVAdiU',
    appId: '1:136467448884:android:d40b1a0200da056699b661',
    messagingSenderId: '136467448884',
    projectId: 'flutter-firebase-4f6f9',
    storageBucket: 'flutter-firebase-4f6f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBF7vshU6PcYvDPpN3BTIjodlI7qlENusM',
    appId: '1:136467448884:ios:e33025fcb074164799b661',
    messagingSenderId: '136467448884',
    projectId: 'flutter-firebase-4f6f9',
    storageBucket: 'flutter-firebase-4f6f9.appspot.com',
    iosClientId: '136467448884-rlic5ogd0n8bq1isjg829c7udg56l0of.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBF7vshU6PcYvDPpN3BTIjodlI7qlENusM',
    appId: '1:136467448884:ios:e33025fcb074164799b661',
    messagingSenderId: '136467448884',
    projectId: 'flutter-firebase-4f6f9',
    storageBucket: 'flutter-firebase-4f6f9.appspot.com',
    iosClientId: '136467448884-rlic5ogd0n8bq1isjg829c7udg56l0of.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebase',
  );
}
