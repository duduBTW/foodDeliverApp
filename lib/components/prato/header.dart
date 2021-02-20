import 'package:flutter/material.dart';

class PratoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    double size = MediaQuery.of(context).size.width;

    return Container(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 80,
              width: size,
              color: theme.colorScheme.primary,
            ),
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://i.redd.it/zbfgjlff775y.jpg')),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            width: size,
            margin: EdgeInsets.symmetric(horizontal: 40),
          ),
        ],
      ),
    );
  }
}
