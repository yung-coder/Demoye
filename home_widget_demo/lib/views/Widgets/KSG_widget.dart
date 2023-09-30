import 'package:flutter/material.dart';

class KSGWidget extends StatelessWidget {
  const KSGWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
              'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ksg-widget%403x.png'),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              "KSG",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
