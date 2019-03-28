import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('./lib/images/ic_launcher.png'),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "家名",
                    hintText: "家名唯一",
                    prefixIcon: Icon(Icons.person)),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "家号",
                    hintText: "个人手机号码",
                    prefixIcon: Icon(Icons.lock)),
              ),
              Container(
                width: 160.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  child: Text(
                    '登录',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  color: Theme.of(context).accentColor,
                  padding: EdgeInsets.only(
                      top: 10.0, right: 30.0, bottom: 10.0, left: 30.0),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                ),
              )
            ],
          ),
        ));
  }
}
