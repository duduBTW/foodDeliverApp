import 'package:deliverAppFlutter/components/home/BottomNavigation.dart';
import 'package:deliverAppFlutter/components/home/bodyHome.dart';
import 'package:flutter/material.dart';

import '../components/home/headerHome.dart';
import '../components/home/plateTypes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [HomeHeader(), PlateTypes(), BodyHeader()],
        ),
      ),
      bottomNavigationBar: DeliverBottomNav(),
    );
  }
}
