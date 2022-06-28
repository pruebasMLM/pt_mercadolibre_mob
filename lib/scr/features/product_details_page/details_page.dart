import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pt_mercadolibre_mob/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pt_mercadolibre_mob/scr/features/search_page/components/body.dart';
import 'package:pt_mercadolibre_mob/size_config.dart';


/// Se crea la clase searchPage
class detailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Clase para orientacion y size 
    SizeConfig().init(context);
    return Scaffold(
      appBar: buidlAppBar(),
      body: Body(),
    );
  }

  AppBar buidlAppBar() {
    return AppBar(
      backgroundColor: KcolorYellowML,
      elevation: 5,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context)},
          icon: SvgPicture.asset("assets/icons_svg/mercadolibre.svg")),
          title: const Text('Mercado Libre Prueba Tecnica', style: TextStyle(color:kTextColor) ),
      actions: <Widget>[
      SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}


