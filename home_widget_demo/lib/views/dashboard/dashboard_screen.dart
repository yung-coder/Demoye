import 'package:flutter/material.dart';
import 'package:home_widget_demo/home_widget_config.dart';
import 'package:home_widget_demo/home_widget_config2.dart';
import 'package:home_widget_demo/views/home_widget/home_widget_1.dart';
import 'package:home_widget_demo/views/home_widget/home_widget_2.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      HomeWidgetConfig.initialize().then((_) => {callApiAndUpdateUI()});
      HomeWidgetConfig2.initialize().then((_) => {callandUpdateUi2()});
    });
    super.initState();
  }

  callApiAndUpdateUI() {
    HomeWidgetConfig.update(
      context,
      HomeWidget(),
    );

    setState(() {});
  }

  callandUpdateUi2() {
    HomeWidgetConfig2.update(
      context,
      HomeWidget2(),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello world'),
      ),
    );
  }
}
