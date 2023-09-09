import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/flutter_weather_bg.dart';
import 'package:home_widget_demo/constants/strings.dart';
import 'package:home_widget_demo/home_widget_config.dart';
import 'package:home_widget_demo/views/home_widget/home_widget.dart';
import 'package:weather/weather.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // Location loc = Location.pickLocation();
  // wt.Weather? currentWeather;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      HomeWidgetConfig.initialize().then((_) => {callApiAndUpdateUI()});
    });
    super.initState();
  }

  callApiAndUpdateUI() {
    setState(() {});
    HomeWidgetConfig.update(
      context,
      HomeWidget(
        imgURL:
            'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ksg-widget%403x.png',
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Text('Hello world'),
      ),
    );
  }
}
