import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/controllers/translations.dart';
import 'package:homeworkk/login/signup/fpage.dart';

void main() {
  runApp(GetMaterialApp(
      translations: LocalString(),
      locale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: Fpage()));
}
