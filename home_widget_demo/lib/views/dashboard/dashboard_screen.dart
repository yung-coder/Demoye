import 'package:flutter/material.dart';
import 'package:home_widget_demo/home_widget_config.dart';
import 'package:home_widget_demo/views/home_widget/home_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
<<<<<<< HEAD
  // Location loc = Location.pickLocation();
  // wt.Weather? currentWeather;

=======
>>>>>>> 961167750440698aa17faa5c7794cf43442562f0
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
<<<<<<< HEAD
            'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/ksg-widget%403x.png',
=======
            'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/wtt-widget.png',
>>>>>>> 961167750440698aa17faa5c7794cf43442562f0
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Center(
        child: Text('Hello world'),
=======
      body: Container(
        child: Center(
            child: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        )),
>>>>>>> 961167750440698aa17faa5c7794cf43442562f0
      ),
    );
  }
}
