import 'package:deliverAppFlutter/components/bodyHome.dart';
import 'package:flutter/material.dart';

import '../components/headerHome.dart';
import '../components/plateTypes.dart';

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
    );
  }
}
