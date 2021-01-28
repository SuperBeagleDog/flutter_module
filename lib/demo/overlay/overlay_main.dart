import 'package:flutter/material.dart';
import 'package:flutter_module/demo/overlay/page/overlay_demo_page.dart';
import 'package:flutter_module/demo/overlay/route/application.dart';
import 'package:flutter_module/demo/overlay/route/my_navigator_observer.dart';


class OverlayDemo extends StatelessWidget {

  OverlayDemo() {
    Application.navigatorObserver = MyNavigatorObserver();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OverlayDemoPage(),
      navigatorObservers: <NavigatorObserver>[
        Application.navigatorObserver
      ],
    );
  }
}