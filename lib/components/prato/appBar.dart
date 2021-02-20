import 'package:flutter/material.dart';

class PratoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(right: 40),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              GestureDetector(
                  child: Icon(Icons.arrow_back),
                  onTap: () => Navigator.of(context).pop()),
              Spacer(
                flex: 1,
              ),
              Text(
                'Restaurant name',
                style: theme.textTheme.headline2,
              ),
              Spacer(
                flex: 1,
              ),
            ]),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
