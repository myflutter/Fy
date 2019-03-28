import 'package:flutter/material.dart';
import './login/login.dart';
import './home/home.dart';
import './loading/load.dart';
import './splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fy家',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: <String, WidgetBuilder>{
        'splash': (BuildContext context) => new Splash(),
        'login': (BuildContext context) => new Login(),
        'home': (BuildContext context) => new Home(title: '我的e家')
      },
      // home: MyHomePage(title: '我的e家'),
      home: Load(),
    );
  }
}
