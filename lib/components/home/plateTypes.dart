import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PlateTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 40),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
          height: 40,
        ),
        Container(
          height: 109,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              PlateType(),
              PlateType(),
              PlateType(),
              PlateType(),
              PlateType(),
              PlateType(),
              PlateType(),
            ],
          ),
        )
      ],
    );
  }
}

class PlateType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 69,
          width: 69,
          margin: EdgeInsets.all(10),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).colorScheme.primary,
            ),
            height: 39,
            width: 69,
            margin: EdgeInsets.all(20),
          ),
        ),
        Positioned(
            top: 25,
            left: 32,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://cdn.myanimelist.net/images/characters/8/311602.jpg',
                width: 43,
                fit: BoxFit.cover,
                height: 43,
              ),
            )),
        Positioned(
          bottom: 24,
          left: 33,
          child: Text(
            "Mercado",
            style: TextStyle(fontSize: 11),
          ),
        ),
      ],
    );
  }
}
