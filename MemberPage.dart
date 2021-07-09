import 'package:flutter/material.dart';

class Member extends StatefulWidget {
  const Member({Key? key}) : super(key: key);

  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TC Society'),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //  DrawerHeader(
            //  child: Container(),
            //decoration: BoxDecoration(color: Colors.amberAccent),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Name Kumar"),
              accountEmail: Text('9898984554'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              subtitle: Text('Features'),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.password_rounded),
              title: Text("Change Password"),
              subtitle: Text('Tap to change'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("FD Calculator"),
              trailing: Icon(Icons.star),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("RD Calculator"),
              trailing: Icon(Icons.star),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("EMI Calculator"),
              trailing: Icon(Icons.star),
            ),
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("LOG OUT",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.add_task_rounded),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
