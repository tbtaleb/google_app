import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/examples_of_what_im_finna_work_with/textf.dart';
import 'package:homeworkk/login/signup/fpage.dart';
import 'package:homeworkk/login/signup/login.dart';

class ForgotPass extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController confEmail = TextEditingController();
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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.off(Login());
                },
                icon: Icon(Icons.arrow_back_ios_new)),
            iconTheme: IconThemeData(size: 30, color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.20,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  "Enter your email to send the confirmation to change the password",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue.shade800,
                                    fontFamily: 'Nexa',
                                    fontSize: 20,
                                  )),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Txtfield(
                                  controller: email,
                                  labelText: "type in your e-mail",
                                  obscureText: false),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Txtfield(
                                  controller: confEmail,
                                  labelText: "confirm your e-mail",
                                  obscureText: false),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade800),
                                    onPressed: () {
                                      if (confEmail.text == email.text &&
                                          email.text.isEmail) {
                                        Get.off(const Fpage());
                                      } else {
                                        Get.snackbar("hey there",
                                            "The Emails Don't match",
                                            snackPosition:
                                                SnackPosition.BOTTOM);
                                      }
                                    },
                                    child: Text(
                                      "Send Confirmation !",
                                      style: TextStyle(
                                          fontFamily: 'Nexa',
                                          fontSize: 16,
                                          color: Colors.white),
                                    )),
                              )
                            ]))
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
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
          ),
        ));
  }
}
