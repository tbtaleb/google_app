import 'package:flutter/material.dart';

class Txtfield extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final Color? color;
  final String labelText;
  final bool? obscureText;
  Txtfield(
      {super.key,
      required this.controller,
      this.color,
      required this.labelText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        style: TextStyle(fontFamily: 'Nexa'),
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(width: 3, color: Colors.blue)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(width: 3, color: Colors.green)),
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
        obscuringCharacter: '•',
        obscureText: obscureText as bool,
      ),
    );
  }
}
