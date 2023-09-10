import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final String imgURL;

  const HomeWidget({
    Key? key,
    required this.imgURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            imgURL,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              "Wrestlin' with God, I don't really want to wrestle",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
