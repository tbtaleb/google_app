import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final IconData? firstIcon;
  final String text;
  final Widget? trailing;
  SettingTile(
      {super.key,
      required this.firstIcon,
      required this.text,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 1, right: 1),
        height: MediaQuery.of(context).size.height * 0.06,
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
        child: ListTile(
          leading: Icon(
            firstIcon,
            color: Colors.red.shade600,
            size: 30,
          ),
          title: Text(
            text,
            style: TextStyle(
              fontFamily: 'Nexa',
              fontSize: 24,
              color: Colors.red.shade800,
            ),
          ),
          trailing: trailing,
        ));
  }
}
