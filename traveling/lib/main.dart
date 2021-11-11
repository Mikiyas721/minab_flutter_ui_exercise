import './injector.dart';
import 'package:flutter/material.dart';
import './ui/pages/homePage.dart';

void main() {
  inject();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone',
      routes: routes,
      initialRoute: '/',
    );
  }
}

final routes = {'/': (BuildContext context) => HomePage()};
