import 'package:flutter/material.dart';
class MyDrawer extends StatefulWidget {
  @override
  MyDrawerState createState() => new MyDrawerState();
}
class MyDrawerState extends State<MyDrawer> {
  // Widget userHeader =new UserAccountsDrawerHeader(
  //   accountName: Text('fy', style:TextStyle(fontWeight:FontWeight.bold)),
  //   accountEmail: null,
  //   currentAccountPicture: new CircleAvatar(
  //     backgroundImage: AssetImage('./lib/images/ic_launcher.png'),
  //   ),
  //   decoration: BoxDecoration(
  //     color: Colors.green
  //   ),
  // );
  Widget drawerHeader=new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Expanded(
          child:  Container(
          height: 90.0,
          decoration: BoxDecoration(
            color: Colors.green
          ),
          child: Image.asset('./lib/images/ic_launcher.png', width: 60.0, height: 60.0)
        ),
      )
     
    ],
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
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                switch (index) {
                  case 0:
                    return Container(
                      height: 160.0,
                      decoration: BoxDecoration(
                        color: Colors.green
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('./lib/images/ic_launcher.png', width: 60.0, height: 60.0),
                            Text('Fy' , style:TextStyle(color:Colors.white, fontSize: 20.0),),
                            Text('18814360469' , style:TextStyle(color:Colors.white, fontSize: 12.0))
                          ],
                        ),
                      )
                    );
                    break;
                  case 1: 
                    return ListTile(
                      leading: Icon(Icons.message, color: Colors.black12, size: 22.0,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black12, size: 22.0,),
                      title: Text('我的家音', textAlign: TextAlign.left,),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    );
                  case 2:
                    return ListTile(
                      leading: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black12, size: 22.0,),
                      title: Text('我的家惩', textAlign: TextAlign.left,),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    );
                  case 3:
                    return ListTile(
                      leading: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black12, size: 22.0,),
                      title: Text('我的家规', textAlign: TextAlign.left,),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    );
                  default: 
                  break;
                }
              },
              separatorBuilder: (BuildContext context, int index) {
                if( index ==0) {
                  return Divider(color: Colors.transparent);
                } else {
                  return Divider(color: Colors.green);
                }
              },
            ),
          )
        ],
      ),
      )
      
    );
  }
}