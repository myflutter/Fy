import 'package:flutter/material.dart';
class Load extends StatefulWidget {
  @override
  _LoadState createState() => new _LoadState();
}

class _LoadState extends State<Load> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds:3),(){
      Navigator.of(context).pushReplacementNamed('splash');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('./lib/images/loading.jpeg',fit:BoxFit.cover)
      ],
    );
  }
}