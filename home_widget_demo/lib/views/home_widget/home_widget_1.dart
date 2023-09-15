import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/wtt-widget.png?raw=true',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              "Hello GOD12323",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
