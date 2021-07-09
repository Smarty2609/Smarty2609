import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "Tc Society",
    home: Page1(),
    theme:
        ThemeData(primarySwatch: Colors.amber, accentColor: Colors.amberAccent),
  ));
}
