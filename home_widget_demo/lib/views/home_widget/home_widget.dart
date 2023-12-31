import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';
// import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';
import 'package:home_widget_demo/models/weather.dart';

class HomeWidget extends StatelessWidget {
  final Weather weather;

  const HomeWidget({
    Key? key,
    required this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 170,
    //   height: 170,
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: NetworkImage(
    //         'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ksg-widget%403x.png',
    //       ),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: Column(
    //     children: [
    //       Container(
    //         width: 170,
    //         height: 170,
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: NetworkImage(
    //               'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ksg-widget%403x.png',
    //             ),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //       Text("Wrestlin' with God, I don't really want to wrestle",
    //           style: const TextStyle(
    //               color: Colors.white, fontWeight: FontWeight.bold),
    //           textScaleFactor: 1.7),
    //       // Text(weather.cityName,
    //       //     style: const TextStyle(color: Colors.white60, fontSize: 14)),
    //     ],
    //   ),
    // );

    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ksg-widget%403x.png',
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

        //           style: const TextStyle(
        //               color: Colors.white, fontWeight: FontWeight.bold),
        //           textScaleFactor: 1.7),
      ],
    );
  }
}
