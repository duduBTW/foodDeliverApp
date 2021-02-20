import 'package:flutter/material.dart';

class BodyRestaurante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lanches",
            style: TextStyle(color: Color(0xff5D6167)),
          ),
          SizedBox(
            height: 20,
          ),
          PratoItem(),
          PratoItem(),
          PratoItem(),
          PratoItem(),
          PratoItem(),
          PratoItem(),
        ],
      ),
    );
  }
}

class PratoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cWidth = (MediaQuery.of(context).size.width - 75 - 40) * 0.8;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 1,
              color: Color(0xffDDDDE3),
              height: double.infinity,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: cWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Teste",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elitasaa aa",
                    style: TextStyle(fontSize: 12, color: Color(0xff5D6167)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("A partir de R\$120,00",
                      style: TextStyle(
                          fontSize: 14, color: Theme.of(context).accentColor)),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      height: 70,
                      width: 70,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Image.network(
                    'https://cdn.myanimelist.net/images/characters/8/311602.jpg',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
