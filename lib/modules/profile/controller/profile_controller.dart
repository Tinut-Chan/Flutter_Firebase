import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/modules/profile/model/profile_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var isLoadingAllData = false.obs;
  var profileData = <ProfileModel>[].obs;

  Future<void> fetchAllData() async {
    isLoadingAllData(true);
    try {
      QuerySnapshot data =
          await FirebaseFirestore.instance.collection('db_profile').get();
      profileData.clear();
      debugPrint('= = = == Data: $data');
      for (var list in data.docs) {
        profileData.add(
          ProfileModel(
            id: list['id'],
            firstName: list['first_name'],
            lastName: list['last_name'],
            name: list['name'],
            age: list['age'],
            gender: list['gender'],
            phoneNumber: list['phone_number'],
            photo: list['photo'],
            relation: list['relation'],
          ),
        );
      }
      isLoadingAllData(false);
    } catch (e) {
      debugPrint('= = = = = =Error Function: ${e.toString()}');
      isLoadingAllData(false);
    }
    isLoadingAllData(false);
  }
}
