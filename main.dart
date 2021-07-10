import 'package:demo/LoginPage.dart';
import 'package:flutter/material.dart';
import 'MemberPage.dart';

import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Tc Society",
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.amber, accentColor: Colors.amberAccent),
      routes: {
        '/Login': (context) => Login(),
        '/Home': (context) => Home(),
        '/Member': (context) => Member(),
      },
    ),
  );
}
