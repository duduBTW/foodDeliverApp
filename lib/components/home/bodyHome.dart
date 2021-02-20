import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class BodyHeader extends StatelessWidget {
  void _redirectRestaurant(BuildContext context) {
    Navigator.of(context).pushNamed('/restaurante');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lojas",
            style: TextStyle(color: Color(0xff5D6167)),
          ),
          SizedBox(
            height: 20,
          ),
          StoreItem(_redirectRestaurant),
          StoreItem(_redirectRestaurant),
          StoreItem(_redirectRestaurant),
          StoreItem(_redirectRestaurant),
          StoreItem(_redirectRestaurant),
          StoreItem(_redirectRestaurant),
          // MySeparator()
        ],
      ),
    );
  }
}

class StoreItem extends StatelessWidget {
  final Function redirectRestaurant;

  const StoreItem(this.redirectRestaurant);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => redirectRestaurant(context),
      child: Container(
          height: 70,
          margin: EdgeInsets.only(bottom: 30),
          // color: Theme.of(context).colorScheme.primary,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              DottedLine(
                dashLength: 10,
                dashGapLength: 10,
                lineThickness: 3,
                dashColor: Theme.of(context).accentColor,
                // dashGapColor: Colors.red,
                direction: Axis.vertical,
                lineLength: 80,
              ),
              SizedBox(
                width: 20,
              ),
              Image.network(
                'https://cdn.myanimelist.net/images/characters/8/311602.jpg',
                width: 70,
                fit: BoxFit.cover,
                // height: ,
                // height: 43,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nome da loja",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Lanche",
                    style: TextStyle(
                        fontSize: 12, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "10-20 mins - 2km",
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff3A3C64),
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
              Spacer(
                flex: 1,
              ),
              AvaliacaoUsuario(),
              SizedBox(
                width: 20,
              ),
            ],
          )),
    );
  }
}

class AvaliacaoUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
          size: 14,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "4.5",
          style: TextStyle(fontSize: 12, color: Theme.of(context).primaryColor),
        )
      ],
    );
  }
}
