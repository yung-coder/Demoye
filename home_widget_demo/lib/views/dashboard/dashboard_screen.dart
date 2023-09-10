import 'package:flutter/material.dart';
import 'package:home_widget_demo/home_widget_config.dart';
import 'package:home_widget_demo/views/home_widget/home_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      HomeWidgetConfig.initialize().then((value) async {
        callApiAndUpdateUI();
      });
    });
    super.initState();
  }

  callApiAndUpdateUI() {
    setState(() {});
    HomeWidgetConfig.update(
      context,
      HomeWidget(
        imgURL:
            'https://raw.githubusercontent.com/aronvisser19/ye-said/main/android-widgets/images/wtt-widget.png',
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
