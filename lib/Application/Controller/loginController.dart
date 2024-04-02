import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yujdesingssample/Common/Loader.dart';
import 'package:yujdesingssample/Config/app_pages.dart';
import 'package:yujdesingssample/Infrastructure/login_param.dart';
import 'package:yujdesingssample/Provider/LoadingAdapter.dart';

class LoginController extends GetxController {
  LoginController({this.yujRepository});

  /// inject repo abstraction dependency
  final ILoadingRepository yujRepository;
  String userNameValue = '';
  String profilePic = '';
  String role = '';
  final LocalDb = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // callAPI();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  callAPI(String username, String password) {
    Loader.show();
    yujRepository
        .dynamic(LoginAPIModal(username: username, pasword: password))
        .then((data) {
      Get.back();
      // userNameValue = data.results['first_name'].toString() +
      //     (data.results['last_name'].toString() == "null"
      //         ? "None"
      //         : data.results['last_name'].toString());
      //
      // LocalDb.write('userid', '${data.results['data']['id'].toString()}');
      Get.toNamed(Routes.homePageView);
    }, onError: (err) {
      Get.back();
      Get.snackbar(
        "Check Credential\'s once",
        " and try again",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
    });
  }
}
