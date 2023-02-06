import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/login/signup/signup.dart';
import 'login.dart';

class Fpage extends StatelessWidget {
  const Fpage({super.key});

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/book.png')))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'title1'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Nexa',
                  //fontWeight: FontWeight.bold,
                  fontSize: 57,
                ),
              ),
              Text(
                'title2'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Nexa',
                  fontWeight: FontWeight.bold,
                  fontSize: 57,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'signup phrase'.tr,
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'product',
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.33,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(
                    onPressed: (() {
                      Get.to(() => Signup());
                    }),
                    child: Text(
                      'signup'.tr,
                      style: TextStyle(fontSize: 25, fontFamily: 'Nexa'),
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                'or'.tr,
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'product',
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.36,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(width: 3.0, color: Colors.blue)),
                    onPressed: (() {
                      Get.to(() => Login());
                    }),
                    child: Text(
                      'log in'.tr,
                      style: TextStyle(
                          color: Colors.blue, fontSize: 25, fontFamily: 'Nexa'),
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                'log in phrase'.tr,
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'product',
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
