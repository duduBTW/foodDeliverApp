import 'package:deliverAppFlutter/pages/pedidos.dart';
import 'package:deliverAppFlutter/pages/prato.dart';
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
                  letterSpacing: 4),
              headline2: TextStyle(
                  color: Color(0xFFF3B3F40),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4))),
      home: HomePage(),
      routes: {
        // '/': (ctx) => HomePage(),
        // '/pedidos': (ctx) => PedidosPage(),
      },
      onGenerateRoute: (settings) {
        print(settings.name);
        switch (settings.name) {
          case "/pedidos":
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => PedidosPage(),
              transitionDuration: Duration(seconds: 0),
            );
          case "/home":
            return PageRouteBuilder(
              pageBuilder: (_, __, ___) => HomePage(),
              transitionDuration: Duration(seconds: 0),
            );
          case "/restaurante":
            return PageRouteBuilder(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  animation = CurvedAnimation(
                      parent: animation, curve: Curves.easeInOut);

                  return SlideTransition(
                      child: child,
                      position:
                          Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
                              .animate(animation));
                },
                pageBuilder: (context, animation, secondaryAnimation) {
                  return RestaurantPage();
                },
                transitionDuration: const Duration(milliseconds: 300));

          case "/prato":
            return PageRouteBuilder(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  animation = CurvedAnimation(
                      parent: animation, curve: Curves.easeInOut);

                  return SlideTransition(
                      child: child,
                      position:
                          Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
                              .animate(animation));
                },
                pageBuilder: (context, animation, secondaryAnimation) {
                  return PratoPage();
                },
                transitionDuration: const Duration(milliseconds: 300));
          default:
            return MaterialPageRoute(builder: (context) => Container());
        }
        // unknown route
      },
    );
  }
}
