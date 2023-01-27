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
              const Text(
                "A Better Way For",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Nexa',
                  //fontWeight: FontWeight.bold,
                  fontSize: 57,
                ),
              ),
              const Text(
                "Booking A Book",
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
              const Text(
                "\"let's start by making an account\"",
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
                      Get.to(() =>Signup());
                    }),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 25, fontFamily: 'Nexa'),
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Text(
                "\"OR\"",
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
                width: MediaQuery.of(context).size.width * 0.33,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(width: 3.0, color: Colors.blue)),
                    onPressed: (() {
                      Get.to(() =>Login());
                    }),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.blue, fontSize: 25, fontFamily: 'Nexa'),
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Text(
                "\"simply log in if you already have an account\"",
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
