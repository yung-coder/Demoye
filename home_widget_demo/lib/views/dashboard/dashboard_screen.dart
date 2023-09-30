import 'package:flutter/material.dart';
import 'package:home_widget_demo/configs/home_widget_config.dart';
import 'package:home_widget_demo/configs/home_widget_config2.dart';
import 'package:home_widget_demo/configs/home_widget_config3.dart';
import 'package:home_widget_demo/views/Widgets/home_widget_1.dart';
import 'package:home_widget_demo/views/Widgets/home_widget_2.dart';
import 'package:home_widget_demo/views/Widgets/home_widget_3.dart';

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
      HomeWidgetConfig3.initialize().then((_) => {callandUpdateUi3()});
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

  callandUpdateUi3() {
    HomeWidgetConfig3.update(
      context,
      HomeWidget3(),
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
