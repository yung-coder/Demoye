import 'package:flutter/material.dart';

class HomeWidget3 extends StatelessWidget {
  const HomeWidget3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
              'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ksg-widget%402x.png'),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              "Hello GOD Hasnain45668",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
