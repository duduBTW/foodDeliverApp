import 'package:flutter/material.dart';

class PedidosHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(right: 40, bottom: 20),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Historico',
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
