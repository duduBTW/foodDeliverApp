import 'package:deliverAppFlutter/components/home/bodyHome.dart';
import 'package:flutter/material.dart';

class RestaurantHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(right: 40),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                  child: Icon(Icons.arrow_back),
                  onTap: () => Navigator.of(context).pop()),
              GestureDetector(
                  child: Icon(
                Icons.favorite_border_rounded,
                color: Theme.of(context).accentColor,
              ))
            ]),
            SizedBox(
              height: 40,
            ),
            Text(
              'Restaurant name',
              style: theme.textTheme.headline1,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Lanches",
                  style: TextStyle(color: Color(0xff5D6167)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "2,2 km",
                  style: TextStyle(color: Color(0xff5D6167)),
                ),
                Spacer(
                  flex: 1,
                ),
                AvaliacaoUsuario(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
