import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/examples_of_what_im_finna_work_with/day42.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  _snackbrr() {
    Get.snackbar("hey there", "ti7lk asba ta3milk 3in",
        snackPosition: SnackPosition.BOTTOM);
  }

  _dialogue() {
    Get.defaultDialog(
        title: "7assilou", content: Text("uhhh yezi bla we7ed te3ek"));
  }

  _bottumsheet() {
    Get.bottomSheet(Container(
      child: Text("aaaaaaa"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get package | Home")),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: (() {
                Get.to(Day42());
              }),
              child: Text("got to second")),
          ElevatedButton(
              onPressed: (() {
                _snackbrr();
              }),
              child: Text("snack bar")),
          ElevatedButton(
              onPressed: (() {
                _dialogue();
              }),
              child: Text("dialog")),
          ElevatedButton(
              onPressed: (() {
                _bottumsheet();
              }),
              child: Text("bottum sheet")),
          ElevatedButton(
              onPressed: (() {
                Get.toNamed("/second");
              }),
              child: Text("named route")),
        ]),
      ),
    );
  }
}
