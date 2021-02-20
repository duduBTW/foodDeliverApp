import 'package:flutter/material.dart';

class DeliverBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
              top: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 1))),
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(Icons.home, "/home"),
          BottomNavItem(Icons.search, ""),
          BottomNavItem(Icons.menu_book, "/pedidos"),
          BottomNavItem(Icons.person, "")
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String redirectTo;

  const BottomNavItem(this.icon, this.redirectTo);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushReplacementNamed(redirectTo),
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(color: Theme.of(context).primaryColor, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 20,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        alignment: Alignment(0, 0),
        child: Icon(
          icon,
          size: 20,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
