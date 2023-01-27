import 'package:flutter/material.dart';


class Numbar extends StatefulWidget {
  const Numbar({super.key});

  @override
  State<Numbar> createState() => _NumbarState();
}

class _NumbarState extends State<Numbar> {
  int currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Icon(Icons.add),
          onTap: () {
            setState(() {
              currentvalue++;
            });
          },
        ),
        Text(currentvalue.toString()),
        IconButton(
            onPressed: (() {
              setState(() {
                currentvalue--;
              });
            }),
            icon: Icon(Icons.minimize_outlined)),
      ],
    )));
    ;
  }
}
