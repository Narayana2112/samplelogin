import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../Widgets/BoxTextfield.dart';
import '../../../Utills/Colours.dart';
import '../../../Widgets/CustomButton.dart';
import '../../../Utills/GoogleSignInApi.dart';
import '../../../Utills/Responsivewidget.dart';
import '../../../Utills/Size_config.dart';
import '../../../Widgets/Textonly.dart';
import '../../../Widgets/background.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late bool _passwordVisible;
  bool isChecked = false;
  final LoginController loginController = Get.put(LoginController());
  TextEditingController usernamcontroller  = new TextEditingController();
  TextEditingController pswdcontroller  = new TextEditingController();
  void initState() {
    _passwordVisible = false;
    super.initState();
  }
Future GoogleSignin() async{

    await GoogleSignInApi.login();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backGroundNew(),
      child: SafeArea(
        child: SingleChildScrollView(child:
        Column(children: [Container(
          width: ResponsiveWidget.isSmallScreen(context)
              ? double.infinity
              : SizeConfig.screenWidth !- 400,
          height: MediaQuery.of(context).size.height,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Form(
                // key: loginController.loginFormKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Container(
                          height: 100,
                          width: 335,
                          child: FittedBox(
                            child: Image.asset('assets/images/dummylogo.jpg'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Appwhilte,
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child:
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Center(child: Textonly(bgcolor:kopacity,settext:"Welcome",setcolor: Appblack,fontsize:25)),
                                Center(child: Textonly(bgcolor:kopacity,settext:"Login In to Your Account",setcolor: Appblack,fontsize:18)),
                                SizedBox(
                                  height: 10,
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 510,
                                    decoration: (BoxDecoration(
                                      color: Appwhilte,
                                      border: Border.all(
                                        width: 1,
                                        color: AppTextColor,//                   <--- border width here
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(20)),

                                    )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20.0,left: 20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:5, right: 5, top:20),
                                            child: Textonly(bgcolor:kopacity,settext:"Username*",setcolor: Appblack,fontsize:16),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5, top: 0),
                                            child: BoxTextField(
                                              label: "UserName",
                                              controller: usernamcontroller,
                                              inputFormatters: [
                                                FilteringTextInputFormatter.deny(
                                                    RegExp('[ ]')),
                                              ],
                                              validator: (str) {
                                                // return loginController.validateEmail(str);
                                              },
                                              // controller: loginController.emailController,
                                              // label: ('Username'),
                                              hintText: "Username",
                                            ),
                                          ),
                                          SizedBox(
                                            height:10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
                                            child: Textonly(bgcolor:kopacity,settext:"Password*",setcolor: Appblack,fontsize:16),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 10.0, right: 10),
                                            child: BoxTextField(
                                              label: "",
                                              controller: pswdcontroller,
                                              inputFormatters: [
                                                FilteringTextInputFormatter.deny(
                                                    RegExp('[ ]')),
                                              ],
                                              obsecure: !_passwordVisible,
                                              keyboardType: TextInputType.visiblePassword,
                                              validator: (str) {
                                                // return loginController.validatePassword(str);
                                              },
                                              // controller: loginController.passwordController,
                                              // label: ('Password'),
                                              hintText: "Password",
                                              suffix: IconButton(
                                                icon: Icon(
                                                  _passwordVisible
                                                      ? Icons.visibility
                                                      : Icons.visibility_off,
                                                  color:
                                                 Colors.grey,
                                                  size: 25,
                                                ),
                                                onPressed: () {
                                                  // Update the state i.e. toogle the state of passwordVisible variable
                                                  setState(() {
                                                    _passwordVisible = !_passwordVisible;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5),
                                            child: Align(alignment: Alignment.topRight,child: Textonly(bgcolor:kopacity,settext:"Forgot Username/Password",setcolor: AppPrimaryColor,fontsize:16)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5.0),
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  checkColor: Appblack,
                                                  activeColor: AppPrimaryColor,
                                                  value: isChecked,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                ),

                                                Text(
                                                  'Remember Me ',
                                                  style:
                                                  Theme.of(context).textTheme.bodyText2,
                                                ), //Text
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(25,10,25,10),
                                            // child: CustomButton("Login",Appwhilte,AppPrimaryColor,AppPrimaryColor,25,Get.toNamed("/home")),
                                            child: CustomButton(
                                                onTap: (){
                                                  loginController.Postlogin(usernamcontroller.text.toString(),pswdcontroller.text.toString());
                                            },
                                              text: "Login",
                                              fontsize: 20,
                                              color:AppPrimaryColor ,
                                              textcolor: Appwhilte,
                                                bordcolor:AppPrimaryColor,
                                            ),
                                          ),
                                          SizedBox(height: 5,),
                                          GestureDetector(child: Center(child: Textonly(bgcolor:kopacity,settext:"Create Your Account",setcolor: AppPrimaryColor,fontsize:20)),onTap: (){
                                            Get.toNamed("/signup");
                                          },),
                                          SizedBox(height: 10,),
                                          Center(child: Textonly(bgcolor:kopacity,settext:"- OR - ",setcolor: Appblack,fontsize:25)),
                                          SizedBox(height: 10,),
                                          Center(child: FloatingActionButton.extended(onPressed: (){GoogleSignin();},icon:Image.asset('assets/images/google_logo.png',height: 32,width: 32,),backgroundColor: Appwhilte,foregroundColor: Appblack, label: Textonly(bgcolor:kopacity,settext:"Sign in With Google",setcolor: Appblack,fontsize:20))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),],),),
        
      ),
    );
  }
}

