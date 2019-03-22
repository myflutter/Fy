import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  @override
  MyDrawerState createState() => new MyDrawerState();
}
class MyDrawerState extends State<MyDrawer> {
  Widget userHeader =new UserAccountsDrawerHeader(
    accountName: Text('fy', style:TextStyle(fontWeight:FontWeight.bold)),
    accountEmail: null,
    currentAccountPicture: new CircleAvatar(
      backgroundImage: AssetImage('./lib/images/ic_launcher.ong'),
    ),
    decoration: BoxDecoration(
      color: Colors.green
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                userHeader,
                ListTile(
                  trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
                  title: Text('message', textAlign: TextAlign.right,),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
                  title: Text('favorite', textAlign: TextAlign.right,),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
                  title: Text('settings', textAlign: TextAlign.right,),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
      )
      
    );
  }
}