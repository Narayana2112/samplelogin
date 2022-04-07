import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samplelogin/app/modules/login/Model/userloginmodel.dart';

import '../Services/Services.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  var isLoading = true.obs;
  UserPersonaModel userPersonaModel = new UserPersonaModel();
  var loginstatus;
  @override
  void onInit() {
    super.onInit();
  }
  void Postlogin(var username,var pswd) async {
    try {
      isLoading(true);
      var login = await Sendlogin(username, pswd);
      if (login != null) {
        isLoading(false);
        loginstatus= userPersonaModel.status;
        if(loginstatus=="Sucess"){
          Get.toNamed("/home");
        }if(loginstatus=="401"){
          Get.snackbar(
            "Error!!!",
            "Username And Password are not Valid",
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
            borderColor: Colors.indigo,
            borderRadius: 0,
            borderWidth: 2,
            barBlur: 0,
          );
        }
        else{
          Get.snackbar(
            "Error!!!",
            "Something Went Wrong!!!",
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
            borderColor: Colors.indigo,
            borderRadius: 0,
            borderWidth: 2,
            barBlur: 0,
          );
        }
      }
    } finally {
      isLoading(false);
    }
  }
}