import 'package:flutter/material.dart';

class HomeWidget2 extends StatelessWidget {
  const HomeWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
              'https://github.com/aronvisser19/ye-said/blob/main/android-widgets/images/late-widget.png?raw=true'),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              "Hello GOD Hasnain",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
