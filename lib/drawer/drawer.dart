import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  @override
  MyDrawerState createState() => new MyDrawerState();
}
class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:38.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.people),
                Text('zhuyan', style: TextStyle(fontWeight:FontWeight.bold),)
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text('addd'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('management'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}