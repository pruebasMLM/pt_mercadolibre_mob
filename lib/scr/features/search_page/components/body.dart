import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pt_mercadolibre_mob/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pt_mercadolibre_mob/scr/features/view_page/view_page.dart';



class Body extends StatelessWidget {
  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

  var focusNode = FocusNode(onKey: (node, event) {
    if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
      Navigator.push(context,
          MaterialPageRoute(
            builder: (context) =>  viewPage(),
          ));
    }
    return false;
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0.0),
          child: TextField(
            onSubmitted: (value) {},
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Buscar productos, marcas y mas...',
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: clearText,
              ),
            ),
            controller: fieldText,
            focusNode: focusNode,
          ),
        ),
      ],
    );
  }
}
