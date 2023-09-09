import 'package:flutter/material.dart';
// import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';
// import 'package:home_widget_demo/models/weather.dart';

class HomeWidget extends StatelessWidget {
  final String imgURL;

  const HomeWidget({
    Key? key,
    required this.imgURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('$imgURL')),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.network(imgURL),
          SizedBox(
            child: Text(
              "Wrestlin' with God, I don't really want to wrestle",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16, // Adjust the font size as needed
              ),
              textAlign: TextAlign.center, // Center the text
            ),
          ),
          // Text(weather.cityName,
          //     style: const TextStyle(color: Colors.white60, fontSize: 14)),
        ],
      ),
    );
  }
}
