import 'package:deliverAppFlutter/components/home/BottomNavigation.dart';
import 'package:deliverAppFlutter/components/pedidos/Header.dart';
import 'package:flutter/material.dart';

class PedidosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 40, top: 40),
            //   child: Text('Historico'),
            // ),
            PedidosHeader(),
            Pedido(["Teste pedido"]),
            Pedido(["Teste pedido", "abaabab"]),
            Pedido(["Teste pedido"]),
            Pedido(["Teste pedido"]),
            Pedido(["Teste pedido"]),
            Pedido(["Teste pedido", "cirIsee", "pogU", "more"]),
          ],
        ),
      ),
      bottomNavigationBar: DeliverBottomNav(),
    );
  }
}

class Pedido extends StatelessWidget {
  final List<String> pedidos;

  const Pedido(this.pedidos);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40, bottom: 40, left: 40),
      child: Column(
        children: [
          HeaderPedido(),
          ...pedidos
              .map((item) => PedidoBodyItem(
                    pedidoNome: item,
                  ))
              .toList(),
          PedidoFooter(),
        ],
      ),
    );
  }
}

class PedidoFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
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
                  Text(
                    "Ajuda",
                    style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Pedir Novamente",
                    style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
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
    );
  }
}

class PedidoBodyItem extends StatelessWidget {
  final String pedidoNome;

  const PedidoBodyItem({Key key, this.pedidoNome}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
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
                    left:
                        BorderSide(color: theme.colorScheme.primary, width: 6)),
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
              child: Text(
                pedidoNome,
                style: TextStyle(color: Color(0xff3B3F40), fontSize: 12),
              ),
            ),
          ),
          Expanded(
            flex: 19,
            child: Container(),
          )
        ],
      ),
    );
  }
}

class HeaderPedido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IntrinsicHeight(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nome da loja",
                    style: TextStyle(
                        color: Color(0xff3B3F40),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Status",
                      style: TextStyle(fontSize: 9, color: Color(0xff5D6167))),
                ],
              ),
              height: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                border: Border(
                    bottom: BorderSide(color: theme.primaryColor, width: 2)),
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
                color: theme.accentColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
