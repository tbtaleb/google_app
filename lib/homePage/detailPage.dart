import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:homeworkk/homePage/home.dart';
import 'package:homeworkk/homePage/profile.dart';
import 'package:homeworkk/navbar.dart';

import 'package:like_button/like_button.dart';

import '../controllers/signupCont.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

@override
String img_value = Get.arguments["img"];
/* void img(
  String img_value,
) {
  if (img_value == null) {
    img_value = "assets/images/frontp1.png";
  }
} */

String name_value = Get.arguments["name"];
/* void name(
  String name_value,
) {
  if (name_value == null) {
    name_value = "error name";
  }
} */

String author_value = Get.arguments["author"];
/* void author(
  String author_value,
) {
  if (author_value == null) {
    author_value = "author error";
  }
} */

String desc_value = Get.arguments["desc"];
/* void desc(
  String desc_value,
) {
  if (desc_value == null) {
    desc_value = "error desc";
  }
}  */

class _DetailPageState extends State<DetailPage> {
  var register = Get.find<SignUpController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.green.shade600),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'details'.tr,
            style: TextStyle(
                color: Colors.green.shade600, fontFamily: 'Nexa', fontSize: 30),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(CupertinoIcons.chevron_left)),
          iconTheme: IconThemeData(size: 30, color: Colors.green.shade600),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(3, 3),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      )),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.green,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(img_value
                                    /**/))),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.31,
                        width: MediaQuery.of(context).size.width * 0.37,
                        child: Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  name_value,
                                  style: TextStyle(
                                      color: Colors.green.shade600,
                                      fontFamily: 'Nexa',
                                      fontSize: 37),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade700),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'author'.tr,
                                      style: TextStyle(
                                          color: Colors.green.shade600,
                                          fontFamily: 'Nexa',
                                          fontSize: 15),
                                    ),
                                    Text(
                                      author_value,
                                      style: TextStyle(
                                          color: Colors.green.shade600,
                                          fontFamily: 'Nexa',
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'subject'.tr,
                                      style: TextStyle(
                                          color: Colors.green.shade600,
                                          fontFamily: 'Nexa',
                                          fontSize: 15),
                                    ),
                                    Text(
                                      desc_value,
                                      style: TextStyle(
                                          color: Colors.green.shade600,
                                          fontFamily: 'Nexa',
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.001,
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade700),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        LikeButton(
                                          size: 30,
                                          circleColor: CircleColor(
                                              start: Colors.green.shade600,
                                              end: Colors.greenAccent),
                                          bubblesColor: BubblesColor(
                                            dotPrimaryColor: Colors.green,
                                            dotSecondaryColor:
                                                Color.fromARGB(255, 16, 98, 19),
                                          ),
                                          likeBuilder: (isLiked) {
                                            return Icon(
                                              CupertinoIcons.bookmark_fill,
                                              color: isLiked
                                                  ? Colors.green.shade600
                                                  : Colors.green.shade200,
                                              size: 30,
                                            );
                                          },
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          'save'.tr,
                                          style: TextStyle(
                                              color: Colors.green.shade700,
                                              fontFamily: 'Nexa',
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.event_available_rounded,
                                          color: Colors.green.shade600,
                                          size: 34,
                                        ),
                                        Text(
                                          "03/03",
                                          style: TextStyle(
                                              color: Colors.green.shade700,
                                              fontFamily: 'Nexa',
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        LikeButton(
                                          size: 34,
                                          circleColor: CircleColor(
                                              start: Colors.green.shade600,
                                              end: Colors.greenAccent),
                                          bubblesColor: BubblesColor(
                                            dotPrimaryColor: Colors.green,
                                            dotSecondaryColor:
                                                Color.fromARGB(255, 16, 98, 19),
                                          ),
                                          likeBuilder: (isLiked) {
                                            return Icon(
                                              Icons.check_rounded,
                                              color: isLiked
                                                  ? Colors.green.shade600
                                                  : Colors.green.shade200,
                                              size: 34,
                                            );
                                          },
                                        ),
                                        Text('read'.tr,
                                            style: TextStyle(
                                                color: Colors.green.shade700,
                                                fontFamily: 'Nexa',
                                                fontSize: 15))
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'detail phrase'.tr,
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Nexa', fontSize: 30),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.339,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(3, 7),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          style: TextStyle(fontFamily: 'Nexa'),
                          controller: register.name,
                          autofillHints: [AutofillHints.name],
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide: BorderSide(
                                    width: 3, color: Colors.green.shade600)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    width: 3, color: Colors.green.shade600)),
                            labelText: 'name'.tr,
                            labelStyle: TextStyle(color: Colors.green.shade600),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                      /* SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),*/
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          style: TextStyle(fontFamily: 'Nexa'),
                          controller: register.email,
                          autofillHints: [AutofillHints.email],
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide: BorderSide(
                                    width: 3, color: Colors.green.shade500)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    width: 3, color: Colors.green.shade500)),
                            labelText: "email",
                            labelStyle: TextStyle(color: Colors.green.shade500),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                      /* SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),*/
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          style: TextStyle(
                            fontFamily: 'Nexa',
                          ),
                          controller: register.idNum,
                          autofillHints: [AutofillHints.name],
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide: BorderSide(
                                    width: 3, color: Colors.green.shade400)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    width: 3, color: Colors.green.shade400)),
                            labelText: "CIN",
                            labelStyle: TextStyle(color: Colors.green.shade400),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                      /*SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),*/
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.41,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.green.shade300),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            onPressed: (() {
                              Get.snackbar(
                                  barBlur: 20,
                                  colorText: Colors.white,
                                  snackPosition: SnackPosition.BOTTOM,
                                  animationDuration:
                                      Duration(milliseconds: 2000),
                                  'message titleDP'.tr,
                                  'messageDP'.tr);
                              Get.to(() => NavBar());
                            }),
                            child: Text(
                              'book it'.tr,
                              style:
                                  TextStyle(fontSize: 25, fontFamily: 'Nexa'),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      /* SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),*/
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
