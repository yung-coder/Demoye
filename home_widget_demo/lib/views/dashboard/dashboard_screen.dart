import 'package:flutter/material.dart';
import 'package:home_widget_demo/WidgetsConfig/KSG_widget.dart_config.dart';
import 'package:home_widget_demo/WidgetsConfig/home_widget_config.dart';
import 'package:home_widget_demo/WidgetsConfig/home_widget_config2.dart';
import 'package:home_widget_demo/WidgetsConfig/ye_widget_config.dart';
import 'package:home_widget_demo/views/Widgets/KSG_widget.dart';
import 'package:home_widget_demo/views/Widgets/Ye_widget.dart';
import 'package:home_widget_demo/views/Widgets/home_widget_1.dart';
import 'package:home_widget_demo/views/Widgets/home_widget_2.dart';

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
      YeWidgetConfig.initialize().then((_) => {callandUpdateUi4()});
      KSGWidgetConfig.initialize().then((_) => {callandUpdateUi3()});
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
    KSGWidgetConfig.update(
      context,
      KSGWidget(),
    );
    setState(() {});
  }

  callandUpdateUi4() {
    KSGWidgetConfig.update(
      context,
      YeWidget(),
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
