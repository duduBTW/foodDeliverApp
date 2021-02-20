import 'package:deliverAppFlutter/components/restaurant/body.dart';
import 'package:deliverAppFlutter/components/restaurant/header.dart';
import 'package:flutter/material.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RestaurantHeader(),
            SizedBox(
              height: 20,
            ),
            BodyRestaurante()
          ],
        ),
      ),
    );
  }
}
