import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/login/signup/fpage.dart';
import 'package:switcher_button/switcher_button.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    bool value = true;
    return Scaffold(
        backgroundColor: Colors.red.shade600,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Settings',
            style: TextStyle(
                fontFamily: 'Nexa', fontSize: 30, color: Colors.red.shade600),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 1),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.translate_rounded,
                        color: Colors.red.shade600,
                        size: 30,
                      ),
                      Text(
                        "Change Language",
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          fontSize: 30,
                          color: Colors.red.shade800,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.chevron_down,
                            size: 30,
                            color: Colors.red.shade600,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.sun_max_fill,
                        color: Colors.red.shade600,
                        size: 30,
                      ),
                      Text(
                        "Unable Dark Mode",
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          fontSize: 30,
                          color: Colors.red.shade800,
                        ),
                      ),
                      SwitcherButton(
                        onColor: Colors.red.shade600,
                        offColor: Colors.white,
                        size: 35,
                        value: true,
                        onChange: (value) {},
                      )
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 1),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.envelope_fill,
                        color: Colors.red.shade600,
                        size: 30,
                      ),
                      Text(
                        "Submit Errors",
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          fontSize: 30,
                          color: Colors.red.shade800,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 30,
                          color: Colors.red.shade600,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          'assets/images/ggl.png',
                        ),
                      )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Expanded(
                      child: Text(
                        "This App Is Brought To You By iset.ch google club",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.red.shade800,
                          fontFamily: 'Nexa',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Get.defaultDialog(
                    backgroundColor: Colors.white,
                    title: "Are You Sure?",
                    titleStyle: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: 24,
                        color: Colors.grey.shade800),
                    content: Column(
                      children: [
                        Text(
                          "You are about to log out!",
                          style: TextStyle(
                              fontFamily: 'Nexa',
                              fontSize: 15,
                              color: Colors.grey.shade800),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (() {
                                Get.back();
                              }),
                              child: Text("Cancel",
                                  style: TextStyle(
                                      fontFamily: 'Nexa',
                                      color: Colors.grey.shade800)),
                            ),
                            Container(
                              height: 15,
                              width: 2,
                              color: Colors.grey.shade400,
                            ),
                            InkWell(
                              onTap: (() {
                                Get.off(() => Fpage());
                              }),
                              child: Text("Confirm",
                                  style: TextStyle(
                                      fontFamily: 'Nexa',
                                      color: Colors.grey.shade800)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 0.5,
                          blurRadius: 5,
                          offset: Offset(3, 3),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.square_arrow_left,
                          color: Colors.red.shade600,
                          size: 30,
                        ),
                        Text(
                          "Log Out?",
                          style: TextStyle(
                            fontFamily: 'Nexa',
                            fontSize: 30,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
