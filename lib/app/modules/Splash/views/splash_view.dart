import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:samplelogin/app/Widgets/background.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() =>chechscreen());
  }
  Future<void> chechscreen() async {
    Get.toNamed("/login");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: backGroundNew(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child:Container(
            height: 200,
            width: 272,
            child: FittedBox(
              child: Image.asset('assets/images/dummylogo.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          // child:
          // Textonly(settext:"Splash is working",setcolor:GetStorage().read("isDarkmode") == false ? kwhilte : GetStorage().read("isDarkmode") == null ? kwhilte : kblack,fontsize: 18,)
        ),
      ),
    );
    throw UnimplementedError();
  }


}


