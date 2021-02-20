import 'package:deliverAppFlutter/pages/restaurante.dart';
import 'package:flutter/material.dart';

import './pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food',
      theme: ThemeData(
          primaryColor: Color(0xff3A3C64),
          accentColor: Color(0xffF65658),
          // backgroundColor: Color(0xffFFF0F1),
          colorScheme: ColorScheme.light(
              secondary: Color(0xffFFF0F1), primary: Color(0xffF3F4FE)),
          scaffoldBackgroundColor: Color(0xFFFEFEFE),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              subtitle1: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500),
              headline1: TextStyle(
                  color: Color(0xFFF3B3F40),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4))),
      home: HomePage(),
      routes: {
        '/home': (ctx) => HomePage(),
        '/restaurante': (ctx) => RestaurantPage(),
      },
    );
  }
}
