import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Member extends StatefulWidget {
  const Member({Key? key}) : super(key: key);

  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
  TextEditingController __userController = TextEditingController();

  var url = "https://";
  var data;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TC Society'),
      ),
      drawer: Mydrawer(),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: data != null
              ? SingleChildScrollView(child: Card())
              : Center(child: CircularProgressIndicator())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
