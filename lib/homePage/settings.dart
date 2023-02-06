import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeworkk/controllers/settingTile.dart';
import 'package:homeworkk/login/signup/fpage.dart';
import 'package:switcher_button/switcher_button.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = true;
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
            'settings'.tr,
            style: TextStyle(
                fontFamily: 'Nexa', fontSize: 30, color: Colors.red.shade600),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  //languages
                  GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                            title: 'langue'.tr,
                            titleStyle: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Nexa',
                            ),
                            titlePadding: EdgeInsets.only(bottom: 10, top: 10),
                            content: Column(
                              children: [
                                Container(
                                  width: 200,
                                  height: 1,
                                  color: Colors.black26,
                                ),
                                ListTile(
                                  onTap: () {
                                    updateLanguage(Locale('en_US'));
                                  },
                                  leading: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: 44,
                                      maxHeight: 44,
                                    ),
                                    child: Image.asset(
                                        "assets/images/united-kingdom.png",
                                        fit: BoxFit.cover),
                                  ),
                                  title: Text(
                                    "Engllish",
                                    style: TextStyle(fontFamily: 'Nexa'),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  height: 1,
                                  color: Colors.black26,
                                ),
                                ListTile(
                                  onTap: () {
                                    updateLanguage(Locale('fr_FR'));
                                  },
                                  leading: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: 44,
                                      maxHeight: 44,
                                    ),
                                    child: Image.asset(
                                        "assets/images/france.png",
                                        fit: BoxFit.cover),
                                  ),
                                  title: Text(
                                    "Français",
                                    style: TextStyle(fontFamily: 'Nexa'),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  height: 1,
                                  color: Colors.black26,
                                ),
                              ],
                            ));
                      },
                      child: SettingTile(
                          firstIcon: Icons.translate_rounded,
                          text: 'chLang'.tr,
                          trailing: Icon(
                            CupertinoIcons.chevron_down,
                            color: Colors.red.shade600,
                            size: 30,
                          ))),
                  /*SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  //dark mode
                  SettingTile(
                      firstIcon: CupertinoIcons.sun_max_fill,
                      text: 'dark mode'.tr,
                      trailing: SwitcherButton(
                        onColor: Colors.red.shade600,
                        offColor: Colors.white,
                        size: 35,
                        value: isDark,
                        onChange: (value) {
                          Get.changeThemeMode(
                              value ? ThemeMode.light : ThemeMode.dark);
                        },
                      )),*/
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  GestureDetector(
                    child: SettingTile(
                        firstIcon: CupertinoIcons.mail,
                        text: 'sub error'.tr,
                        trailing: Icon(
                          CupertinoIcons.chevron_forward,
                          color: Colors.red.shade600,
                          size: 30,
                        )),
                  ),
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
                            'credits'.tr,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.defaultDialog(
                            backgroundColor: Colors.white,
                            title: 'title log out'.tr,
                            titleStyle: TextStyle(
                                fontFamily: 'Nexa',
                                fontSize: 24,
                                color: Colors.grey.shade800),
                            content: Column(
                              children: [
                                Text(
                                  'sub log out'.tr,
                                  style: TextStyle(
                                      fontFamily: 'Nexa',
                                      fontSize: 15,
                                      color: Colors.grey.shade800),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: (() {
                                        Get.back();
                                      }),
                                      child: Text('cancel'.tr,
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
                                      child: Text('confirm'.tr,
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
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.5,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  CupertinoIcons.square_arrow_left,
                                  color: Colors.red.shade600,
                                  size: 30,
                                ),
                                Text(
                                  'log out'.tr,
                                  style: TextStyle(
                                    fontFamily: 'Nexa',
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30000,
                  ),
                  Image(
                    image: AssetImage("assets\images\oip.png"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
