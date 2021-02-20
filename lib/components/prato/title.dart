import 'package:flutter/material.dart';

class TitlePrato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Text("Nome do item",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
              color: Theme.of(context).primaryColor)),
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
