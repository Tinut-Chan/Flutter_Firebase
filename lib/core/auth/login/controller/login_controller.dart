import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/routes/router.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoadingAfterLogin = false.obs;
  final _auth = FirebaseAuth.instance;
  var email = ''.obs;
  var password = ''.obs;
  var token = ''.obs;

  Future<void> signInWithEmailAndPassword(
      {required BuildContext context}) async {
    isLoadingAfterLogin(true);
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      token.value = '${await userCredential.user?.getIdToken()}';
      debugPrint('User ID Token: ${token.value}');
      router.go('/homescreen');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
      }
      final snackBar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      isLoadingAfterLogin(false);
    }
  }

  // final GoogleSignIn googleSignIn = GoogleSignIn();
  // final FirebaseAuth auth = FirebaseAuth.instance;

  // Future<void> signInWithGoogle() async {
  //   GoogleSignInAccount googleSignInAccount = googleSignIn.currentUser!;
  //   GoogleSignInAuthentication googleAuth =
  //       await googleSignInAccount.authentication;

  //   // Authenticate with Firebase
  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //   final UserCredential userCredential =
  //       await _auth.signInWithCredential(credential);
  //   final User user = userCredential.user!;

  //   // Do something with the user information
  //   debugPrint(user.displayName);
  //   debugPrint(user.email);
  //   debugPrint(user.photoURL);
  // }
}
