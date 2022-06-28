import 'package:flutter/material.dart';
import 'Product.dart';

class ProductItem extends StatelessWidget {
  ProductItem({this.item});

  final Product item;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          elevation: 5,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  this.item.thumbnail,
                  width: 200,
                ),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.title,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                                "Cantidad Disponible:${this.item.available_quantity}"),
                            Text("Precio:${this.item.price}"),
                          ],
                        )))
              ]),
        ));
  }
}
