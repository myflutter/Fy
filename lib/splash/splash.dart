import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new Swiper(
        itemBuilder: (BuildContext context, int index) {
          //  bool showButton = index==3? true:false;
          String splashIndex = "./lib/images/splash_${index + 1}.png";
          if (index == 3) {
            return ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Image.asset(
                    splashIndex,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 46.0,
                    left: MediaQuery.of(context).size.width*0.5-110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[ 
                        Container(
                          width: 220.0,
                          height: 46.0,
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            textColor: Colors.white,
                            child: Text('立即体验'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('login');
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Image.asset(
                    splashIndex,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            );
          }
        },
        itemCount: 4,
        loop: false);
  }
}
