import 'package:flutter/material.dart';
import 'package:flutter_firebase/utils/base_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var activeIndex = 0.obs;

  final _apiBaseHelper = ApiBaseHelper();
  var courseId = ''.obs;
  var isLoading = false.obs;

  Future<void> onFavorite() async {
    isLoading(true);
    _apiBaseHelper.onNetworkRequesting(
        url: 'api/v1/favorite',
        methode: METHODE.post,
        isAuthorize: true,
        body: {
          "courseId": courseId.value,
        }).then((response) {
      debugPrint('TextFile: ${courseId.value}');
      debugPrint('= = = = Respond: $response');
      var message = response['message'];
      debugPrint('message: $message');
      if (message == "Created success") {
        Get.snackbar(
          'Added',
          message,
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        Get.snackbar(
          'Erorr',
          message,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
      isLoading(false);
    });
  }

  var token = ''.obs;
  functionFetchToken() async {
    token.value =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjg0MDgxMTY5LCJleHAiOjE2ODQxNjc1Njl9.sfmQGned7KknBiBUInd3xng74-WkgKpBSJpiwqCKoB4';
    debugPrint('= = = =Token: ${token.value}');
  }
}
