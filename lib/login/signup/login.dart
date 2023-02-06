import 'package:flutter/material.dart';
import 'package:homeworkk/controllers/signupCont.dart';
import 'package:homeworkk/homePage/home.dart';
import 'package:homeworkk/login/signup/forgotp.dart';
import 'package:get/get.dart';
import 'package:homeworkk/controllers/textf.dart';
import 'package:homeworkk/login/signup/fpage.dart';
import 'package:homeworkk/login/signup/signup.dart';
import 'package:homeworkk/navbar.dart';

class Login extends StatelessWidget {
  var loginController = Get.put(SignUpController());
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/images/frontp1.png',
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
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
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(1, 0, 0, 0)),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        children: [
                          Text(
                            'log in'.tr,
                            style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'product',
                              fontWeight: FontWeight.bold,
                              fontSize: 42,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Txtfield(
                            controller: loginController.username,
                            obscureText: false,
                            labelText: 'username'.tr,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Txtfield(
                            controller: loginController.pass,
                            obscureText: true,
                            labelText: 'password'.tr,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Text(
                                  textAlign: TextAlign.right,
                                  'forgot password'.tr,
                                  style: TextStyle(
                                      fontFamily: 'Nexa',
                                      color: Color.fromARGB(255, 0, 65, 119)),
                                ),
                                onTap: () {
                                  Get.to(() => ForgotPass());
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.335,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (loginController.pass.text.isNotEmpty &&
                                      loginController
                                          .username.text.isNotEmpty) {
                                    Get.to(() => NavBar());
                                  }
                                },
                                child: Text(
                                  'confirm'.tr,
                                  style: TextStyle(
                                      fontFamily: 'Nexa', fontSize: 25),
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Text(
                                  textAlign: TextAlign.right,
                                  'dont have an account'.tr,
                                  style: TextStyle(
                                      fontFamily: 'Nexa', color: Colors.blue),
                                ),
                                onTap: () {
                                  Get.to(() => Signup());
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage("assets/images/ggl.png"),
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
