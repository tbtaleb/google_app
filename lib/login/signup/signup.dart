import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/controllers/signupCont.dart';
import 'package:homeworkk/examples_of_what_im_finna_work_with/textf.dart';
import 'package:homeworkk/login/signup/fpage.dart';
import 'package:homeworkk/homePage/profile.dart';
import 'package:homeworkk/navbar.dart';

class Signup extends StatelessWidget {
  SignUpController signupController =
      Get.put(SignUpController(), permanent: true);

  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/images/signup.png',
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.off(Fpage());
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          iconTheme: IconThemeData(size: 30, color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Set Up Your New Account!!",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Nexa',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.height * 0.80,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Txtfield(
                          controller: signupController.username,
                          obscureText: false,
                          labelText: 'Enter a unique username',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Txtfield(
                          controller: signupController.name,
                          obscureText: false,
                          labelText: 'Now put in your full name',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Txtfield(
                          controller: signupController.email,
                          obscureText: false,
                          labelText: 'type in your e-mail',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Txtfield(
                          controller: signupController.telNum,
                          obscureText: false,
                          labelText: 'Phone number',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Txtfield(
                          controller: signupController.idNum,
                          obscureText: false,
                          labelText: 'ID Card number',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Txtfield(
                          controller: signupController.pass,
                          obscureText: true,
                          labelText: 'Put in astrong password',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Txtfield(
                          controller: signupController.confPass,
                          obscureText: true,
                          labelText: 'Re-write the password',
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade800),
                              onPressed: () {
                                if (signupController.email.text.isEmpty ||
                                    signupController.username.text.isEmpty ||
                                    signupController.name.text.isEmpty ||
                                    signupController.idNum.text.isEmpty ||
                                    signupController.telNum.text.isEmpty ||
                                    signupController.pass.text.isEmpty) {
                                  Get.snackbar("hey there",
                                      "You left some fields are empty!",
                                      snackPosition: SnackPosition.BOTTOM);
                                } else if (!signupController
                                    .email.text.isEmail) {
                                  Get.snackbar("hey there", "check the Email!",
                                      snackPosition: SnackPosition.BOTTOM);
                                } else if (signupController.idNum.text.length !=
                                        8 ||
                                    signupController.telNum.text.length != 8) {
                                  Get.snackbar("hey there",
                                      "check if you put the correct id number or phone number!",
                                      snackPosition: SnackPosition.BOTTOM);
                                } else if (signupController.pass.text !=
                                    signupController.confPass.text) {
                                  Get.snackbar(
                                      "hey there", "The passwords Don't match!",
                                      snackPosition: SnackPosition.BOTTOM);
                                } else {
                                  Get.off(NavBar());
                                }
                              },
                              child: Text(
                                "Sign IN!",
                                style: TextStyle(
                                    fontFamily: 'Nexa',
                                    fontSize: 17,
                                    color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
