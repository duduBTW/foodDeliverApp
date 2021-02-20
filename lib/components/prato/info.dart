import 'package:flutter/material.dart';

class DescriptionPrato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
        style: TextStyle(color: Color(0xff3B3F40), fontSize: 14, height: 1.4),
      ),
    );
  }
}

class PriceAndTimePrato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                "10-20 mins",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Stack(
              children: [
                Container(
                  width: 110,
                  height: 16,
                  color: Color(0xffEBEBEE),
                ),
                Positioned(
                    right: 40,
                    bottom: 2,
                    child: RichText(
                      text: TextSpan(
                        text: 'R\$ ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w300),
                        children: <TextSpan>[
                          TextSpan(
                            text: '20',
                            style: TextStyle(
                                fontSize: 26,
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )),
              ],
              overflow: Overflow.visible,
            ),
            // Stack()
          ],
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Color(0xffEBEBEE),
        ),
      ],
    );
  }
}

class QuantidadePrato extends StatefulWidget {
  @override
  _QuantidadePratoState createState() => _QuantidadePratoState();
}

class _QuantidadePratoState extends State<QuantidadePrato> {
  int quantity = 1;

  void _add() {
    setState(() {
      quantity = quantity + 1;
    });
  }

  void _remove() {
    if (quantity > 1) {
      setState(() {
        quantity = quantity - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Text("Quantidade"),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: EdgeInsets.all(0),
                onPressed: _remove,
                icon: Icon(
                  Icons.remove,
                  size: 38,
                  color: Theme.of(context).accentColor,
                ),
              ),
              Text(
                quantity.toString(),
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5D6167)),
              ),
              IconButton(
                padding: EdgeInsets.all(0),
                onPressed: _add,
                icon: Icon(
                  Icons.add,
                  size: 38,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ButtonPrato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      alignment: Alignment(0, 0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 14,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      height: 40,
      width: double.infinity,
      child: Text(
        "Order",
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 2,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
