
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homeworkk/examples_of_what_im_finna_work_with/third.dart';

class Day42 extends StatefulWidget {
  const Day42({super.key});

  @override
  State<Day42> createState() => _Day42State();
}

class _Day42State extends State<Day42> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: (() {
                Get.off(third());
              }),
              child: Text("move to the next page and close the previous page")),
          ElevatedButton(
              onPressed: (() {
                Get.offAll(third());
              }),
              child: Text(
                  "move to the next page and close all the previous pages")),
          SizedBox(
            child: Text(
              "fazet:",
            ),
          ),
          ElevatedButton(onPressed: (() {}), child: Text("bottum sheet")),
        ]),
      ),
    );
  }
}
