
import 'package:flutter/material.dart';

import '../utils/app_text.dart';

AppBar reUseAppbar(String textTile,String TextSubtitle) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,

    title: Column(
      children: [
        Text(textTile,style: appHeaderTextStyle(),),
        Text(TextSubtitle,style: appSubTextStyle(),),
      ],
    ),
  );
}