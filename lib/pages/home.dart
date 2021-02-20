import 'package:flutter/material.dart';

import '../components/headerHome.dart';
import '../components/plateTypes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [HomeHeader(), PlateTypes()],
      ),
    );
  }
}
