import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/controllers/signupCont.dart';
import 'package:like_button/like_button.dart';
import 'detailPage.dart';

class Home extends StatefulWidget {
  var register = Get.find<SignUpController>();
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> bookList = [];
  List<dynamic> displayList = [];
  List<dynamic> displayList2 = [];
  List<dynamic> historyList = []..length = 3;
  List<dynamic> book = [];

  @override
  void initState() {
    readData();
    super.initState();
    displayList = bookList;
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

  void change(
    String value,
  ) {
    for (int i = 0; i < bookList.length; i++) {
      if (value == '') {
        setState(() {
          displayList2 = bookList;
        });
      }
      if (bookList[i]['name']
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase()) ||
          bookList[i]['desc']
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase())) {
        setState(() {
          displayList.add(bookList[i]);
        });
      }
    }
    if (value == '') {
      setState(() {
        displayList2 = bookList;
      });
    }
    setState(() {
      displayList2 = displayList;
      displayList = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    var register = Get.find<SignUpController>();

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: Colors.blue),
      child: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            'Home',
            style: TextStyle(
                fontFamily: 'Nexa', color: Color(0XFF1E88E5), fontSize: 30),
          ),
        ),
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                "Welcome!!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nexa',
                  fontSize: 80,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "What are you looking for to read ",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Nexa', fontSize: 18),
                  ),
                  Text(
                    register.username.value.text,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Nexa', fontSize: 18),
                  ),
                  const Text(
                    " ?",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Nexa', fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
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
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          onChanged: (value) => change(value),
                          style: const TextStyle(fontFamily: 'Nexa'),
                          decoration: const InputDecoration(
                            hintText: "eg: Maths",
                            suffixIcon: Icon(Icons.search),
                            suffixIconColor: Colors.blue,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                borderSide:
                                    BorderSide(width: 3, color: Colors.blue)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: displayList2.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (_, i) {
                                return InkWell(
                                    onTap: () {
                                      Get.to(DetailPage(), arguments: {
                                        book: displayList2[i],
                                        'name':
                                            displayList2[i]['name'].toString(),
                                        'author': displayList2[i]['author']
                                            .toString(),
                                        'img':
                                            displayList2[i]['img'].toString(),
                                        'desc':
                                            displayList2[i]['desc'].toString(),
                                      });
                                      /* setState(() {
                                                                        historyList.add(displayList2[i]);
                                                                      }); */
                                    },
                                    child: ListTile(
                                      title: Text(displayList2[i]['name'],
                                          style: TextStyle(
                                              color: Colors.blue.shade600,
                                              fontFamily: 'Nexa',
                                              fontSize: 18)),
                                      subtitle: Text(displayList2[i]['author'],
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontFamily: 'Nexa',
                                              fontSize: 12)),
                                      leading: ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 44,
                                          minHeight: 44,
                                          maxWidth: 64,
                                          maxHeight: 64,
                                        ),
                                        child: Image.asset(
                                            displayList2[i]['img'],
                                            fit: BoxFit.cover),
                                      ),
                                      trailing: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.check_rounded,
                                            color: Colors.grey.shade600,
                                            size: 34,
                                          ),
                                          Text("read?",
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontFamily: 'Nexa',
                                                  fontSize: 12))
                                        ],
                                      ),
                                    ));
                              }))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
