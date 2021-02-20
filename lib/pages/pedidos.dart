import 'package:flutter/material.dart';

class PedidosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Historico'),
            Pedido(),
          ],
        ),
      ),
    );
  }
}

class Pedido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  flex: 46,
                  child: Image.network(
                    'https://cdn.myanimelist.net/images/characters/8/311602.jpg',
                    // width: 43,
                    fit: BoxFit.cover,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    height: double.infinity,
                    alignment: Alignment(0, -1),
                    child: Container(
                      height: 6,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
                Expanded(
                  flex: 17,
                  child: Container(
                    color: theme.colorScheme.primary,
                  ),
                ),
                Expanded(
                  flex: 230,
                  child: Container(
                    child: Text("Nome da loja"),
                    height: double.infinity,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      border: Border(
                          bottom:
                              BorderSide(color: theme.primaryColor, width: 2)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 19,
                  child: Container(
                    height: double.infinity,
                    alignment: Alignment.centerLeft,
                    color: theme.colorScheme.primary,
                    child: Icon(
                      Icons.navigate_next,
                      size: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  flex: 46,
                  child: Container(
                    alignment: Alignment(1, 0),
                    child: Text(
                      "1",
                      style: TextStyle(color: theme.accentColor),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              color: theme.colorScheme.primary, width: 6)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(),
                ),
                Expanded(
                  flex: 17,
                  child: Container(),
                ),
                Expanded(
                  flex: 230,
                  child: Container(
                    alignment: Alignment(-1, 0),
                    child: Text("Nome do pedido"),
                  ),
                ),
                Expanded(
                  flex: 19,
                  child: Container(),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  flex: 54,
                  child: Container(
                    color: theme.colorScheme.primary,
                  ),
                ),
                Expanded(
                  flex: 247,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      border: Border(
                          top: BorderSide(color: theme.primaryColor, width: 2)),
                    ),
                    child: Row(
                      children: [
                        Text("Ajuda"),
                        Spacer(
                          flex: 1,
                        ),
                        Text("Pedir Novamente"),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 19,
                  child: Container(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
