import 'package:flutter/material.dart';

class DeliverBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(),
          BottomNavItem(),
          BottomNavItem(),
          BottomNavItem()
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).accentColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 14,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      alignment: Alignment(0, 0),
      child: Icon(
        Icons.home_outlined,
        size: 20,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
