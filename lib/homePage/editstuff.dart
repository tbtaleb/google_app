import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/controllers/signupCont.dart';
import 'package:homeworkk/controllers/textf.dart';
import 'package:homeworkk/homePage/profile.dart';
import 'package:homeworkk/navbar.dart';

class EditInfo extends StatefulWidget {
  @override
  _EditInfoState createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  SignUpController signupController =
      Get.put(SignUpController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        centerTitle: true,
        backgroundColor: Colors.green.shade600,
        title: Text(
          'edit your info'.tr,
          style:
              TextStyle(fontFamily: 'Nexa', fontSize: 30, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
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
                        labelText: 'username'.tr,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Txtfield(
                        controller: signupController.name,
                        obscureText: false,
                        labelText: 'name'.tr,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Txtfield(
                        controller: signupController.email,
                        obscureText: false,
                        labelText: 'E-mail',
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Txtfield(
                        controller: signupController.telNum,
                        obscureText: false,
                        labelText: 'phone number'.tr,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Txtfield(
                        controller: signupController.idNum,
                        obscureText: false,
                        labelText: 'CIN',
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade600),
                            onPressed: () {
                              if (signupController.email.text.isEmpty ||
                                  signupController.username.text.isEmpty ||
                                  signupController.name.text.isEmpty ||
                                  signupController.idNum.text.isEmpty ||
                                  signupController.telNum.text.isEmpty) {
                                Get.snackbar("hey there",
                                    "You left some fields are empty!",
                                    snackPosition: SnackPosition.BOTTOM);
                              } else if (!signupController.email.text.isEmail) {
                                Get.snackbar("hey there", "check the Email!",
                                    snackPosition: SnackPosition.BOTTOM);
                              } else if (signupController.idNum.text.length !=
                                      8 ||
                                  signupController.telNum.text.length != 8) {
                                Get.snackbar("hey there",
                                    "check if you put the correct id number or phone number!",
                                    snackPosition: SnackPosition.BOTTOM);
                              } else {
                                Get.to(NavBar());
                              }
                            },
                            child: Text(
                              "Done!",
                              style: TextStyle(
                                  fontFamily: 'Nexa',
                                  fontSize: 24,
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
    );
  }
}
