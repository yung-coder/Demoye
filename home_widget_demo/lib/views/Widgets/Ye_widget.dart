import 'package:flutter/material.dart';

class YeWidget extends StatelessWidget {
  const YeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
              'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ye-widget%403x.png'),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              "YE",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
