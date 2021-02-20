import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(right: 40),
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        width: double.infinity,
        decoration: BoxDecoration(color: theme.colorScheme.secondary),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rua algo bla bla bla bla...",
              style: TextStyle(
                  color: theme.accentColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome',
                  style: theme.textTheme.headline1,
                ),
                Icon(
                  Icons.menu,
                  color: theme.primaryColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
