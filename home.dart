//import 'package:demo/MemberPage.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/scheduler.dart';
// import 'LoginPage.dart';
//import 'package:internet_connection_checker/internet_connection_checker.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // automatic transition to login page after checking connectivity

  // @override
  // void initState() {
  // super.initState();
  // _checkInternetConnectivity();
//}

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0;
    return Scaffold(
      body: Column(children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                "https://i.pinimg.com/originals/f4/01/02/f401026d683b9200d2d356e8678d720d.jpg",
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "TCS ",
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.connect_without_contact_rounded,
                    size: 30,
                    color: Colors.red,
                  ),
                  Text(
                    " Connect",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "टीसी सोसायटी और उनके सदस्यों के लिए",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Developed By",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              "http://app.aoipl.com/logo/aoipl.png",
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.2,
            )
          ],
        ),
      ]),
    );
  }

  _checkInternetConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Container(
        color: Colors.amber,
      );
      _showDialog('Error 502', "You are not connected to any internet network");
    } else if (result == ConnectivityResult.mobile) {
      Navigator.pushNamed(context, '/Login');
    } else if (result == ConnectivityResult.wifi) {
      Navigator.pushNamed(context, '/Login');
    }
  }

  _showDialog(title, text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(text),
            actions: <Widget>[
              TextButton(
                child: Text('try again'),
                onPressed: () {
                  Navigator.of(context).pop();
                  CircularProgressIndicator();
                  _checkInternetConnectivity();
                },
              )
            ],
          );
        });
  }
}
