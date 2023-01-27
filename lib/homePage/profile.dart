import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/controllers/signupCont.dart';
import 'package:homeworkk/homePage/detailPage.dart';
import 'package:homeworkk/homePage/editstuff.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var register = Get.find<SignUpController>();
  bool button_test = true;
  bool button_test2 = true;
  bool button_test3 = true;
  List<dynamic> bookList = [];

  @override
  void initState() {
    readData();
    super.initState();
    bookList = bookList;
  }

  readData() async {
    await DefaultAssetBundle.of(context)
        .loadString("assets/booklist.json")
        .then((s) {
      setState(() {
        bookList = json.decode(s);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow.shade700,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Your Profile',
            style: TextStyle(
                fontFamily: 'Nexa',
                fontSize: 30,
                color: Colors.yellow.shade700),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/user.png',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      register.username.value.text,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                        fontFamily: 'Nexa',
                                        fontSize: 37,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Name:  ",
                                    style: TextStyle(
                                        fontFamily: 'Nexa',
                                        fontSize: 20,
                                        color: Colors.amber),
                                  ),
                                  Expanded(
                                    child: Text(
                                      register.name.value.text,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                          fontFamily: 'Nexa',
                                          fontSize: 20,
                                          color: Colors.amber.shade400),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Email:  ",
                                    style: TextStyle(
                                        fontFamily: 'Nexa',
                                        fontSize: 20,
                                        color: Colors.amber),
                                  ),
                                  Expanded(
                                    child: Text(
                                      register.email.value.text,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                          fontFamily: 'Nexa',
                                          fontSize: 20,
                                          color: Colors.amber.shade400),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "CIN:  ",
                                    style: TextStyle(
                                        fontFamily: 'Nexa',
                                        fontSize: 20,
                                        color: Colors.amber),
                                  ),
                                  Expanded(
                                    child: Text(
                                      register.idNum.value.text,
                                      style: TextStyle(
                                          fontFamily: 'Nexa',
                                          fontSize: 20,
                                          color: Colors.amber.shade400),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Phone Number:  ",
                                    style: TextStyle(
                                        fontFamily: 'Nexa',
                                        fontSize: 20,
                                        color: Colors.amber),
                                  ),
                                  Expanded(
                                    child: Text(
                                      register.telNum.value.text,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: false,
                                      style: TextStyle(
                                          fontFamily: 'Nexa',
                                          fontSize: 20,
                                          color: Colors.amber.shade400),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    CupertinoIcons.chevron_right_square,
                    size: 20,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: InkWell(
                      onTap: () {
                        Get.to(EditInfo());
                      },
                      child: Text(
                        textAlign: TextAlign.right,
                        "Edit",
                        style: TextStyle(
                            fontFamily: 'Nexa',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(3, -2),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: (() => setState(
                                    () => button_test = !button_test,
                                  )),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                elevation: 0,
                                backgroundColor: button_test
                                    ? Colors.transparent
                                    : Colors.yellow
                                        .shade700, // This is what you need!
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.bookmark,
                                    color: button_test
                                        ? Colors.yellow.shade700
                                        : Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    "Saved",
                                    style: TextStyle(
                                      fontFamily: 'Nexa',
                                      fontSize: 20,
                                      color: button_test
                                          ? Colors.yellow.shade700
                                          : Colors.white,
                                    ),
                                  ),
                                ],
                              )),
                          VerticalDivider(
                            thickness: 5,
                            color: Colors.yellow.shade200,
                          ),
                          ElevatedButton(
                              onPressed: (() =>
                                  setState(() => button_test2 = !button_test2)),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                elevation: 0,
                                backgroundColor: button_test2
                                    ? Colors.transparent
                                    : Colors.yellow
                                        .shade700, // This is what you need!
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_rounded,
                                    color: button_test2
                                        ? Colors.yellow.shade700
                                        : Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    "Read",
                                    style: TextStyle(
                                      fontFamily: 'Nexa',
                                      fontSize: 20,
                                      color: button_test2
                                          ? Colors.yellow.shade700
                                          : Colors.white,
                                    ),
                                  ),
                                ],
                              )),
                          VerticalDivider(
                            thickness: 5,
                            color: Colors.yellow.shade200,
                          ),
                          ElevatedButton(
                              onPressed: (() =>
                                  setState(() => button_test3 = !button_test3)),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                elevation: 0,
                                backgroundColor: button_test3
                                    ? Colors.transparent
                                    : Colors.yellow
                                        .shade700, // This is what you need!
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: button_test3
                                        ? Colors.yellow.shade700
                                        : Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    "History",
                                    style: TextStyle(
                                      fontFamily: 'Nexa',
                                      fontSize: 20,
                                      color: button_test3
                                          ? Colors.yellow.shade700
                                          : Colors.white,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: bookList.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (_, i) {
                                return InkWell(
                                    onTap: () {
                                      Get.to(DetailPage(), arguments: {
                                        'name': bookList[i]['name'].toString(),
                                        'author':
                                            bookList[i]['author'].toString(),
                                        'img': bookList[i]['img'].toString(),
                                        'desc': bookList[i]['desc'].toString(),
                                      });
                                    },
                                    child: ListTile(
                                      title: Text(bookList[i]['name'],
                                          style: TextStyle(
                                              color: Colors.yellow.shade600,
                                              fontFamily: 'Nexa',
                                              fontSize: 18)),
                                      subtitle: Text(bookList[i]['author'],
                                          style: TextStyle(
                                              color: Colors.yellow.shade500,
                                              fontFamily: 'Nexa',
                                              fontSize: 12)),
                                      leading: ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 44,
                                          minHeight: 44,
                                          maxWidth: 64,
                                          maxHeight: 64,
                                        ),
                                        child: Image.asset(bookList[i]['img'],
                                            fit: BoxFit.cover),
                                      ),
                                      trailing: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.check_rounded),
                                          Text("read",
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontFamily: 'Nexa',
                                                  fontSize: 12))
                                        ],
                                      ),
                                    ));
                              }))
                    ]),
              ),
            )
          ],
        ));
  }
}
