import 'package:flutter/material.dart';
class Dynamic extends StatefulWidget {
  final TabController tabController;
  Dynamic({Key key, @required this.tabController}):super(key:key);
  @override
  DynamicState createState()=> new DynamicState();
}
class DynamicState extends State<Dynamic>  {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: widget.tabController,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text('123', textScaleFactor: 5),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('456', textScaleFactor: 5),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('789', textScaleFactor: 5),
          ),
        ],
      );
  }
}