import 'package:flutter/material.dart';
import 'package:pt_mercadolibre_mob/components/title_text.dart';
import 'package:pt_mercadolibre_mob/services/ApiMLService.dart';
import 'package:pt_mercadolibre_mob/size_config.dart';
import 'view_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    // It enables scrolling
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: TitleText(title: "Productos Encontrados"),
            ),
            // Right Now product is our demo product
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? ViewProducts(products: snapshot.data)
                    : Center(child: Image.asset('assets/images/ripple.gif'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
