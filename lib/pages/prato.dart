import 'package:deliverAppFlutter/components/prato/appBar.dart';
import 'package:deliverAppFlutter/components/prato/header.dart';
import 'package:deliverAppFlutter/components/prato/info.dart';
import 'package:deliverAppFlutter/components/prato/title.dart';
import 'package:flutter/material.dart';

class PratoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PratoAppBar(),
            PratoHeader(),
            TitlePrato(),
            DescriptionPrato(),
            PriceAndTimePrato(),
            QuantidadePrato(),
            ButtonPrato()
          ],
        ),
      ),
    );
  }
}
