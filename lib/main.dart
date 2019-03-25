import 'package:flutter/material.dart';
import './dio/httpUtil.dart';
import './drawer/drawer.dart';
import './dynamic/dynamic.dart';
import './members/members.dart';
import './familyRule/familyRule.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fy家',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: '我的e家'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  int _selectedIndex= 0;
  TabController _tabController;
  // Future _incrementCounter() async{
  //   String url = '/novelApi';
  //   var response=await HttpUtil().get(url);
  //   print(response);
    
  // }
  _tapItem(index) {
    setState(() {
     _selectedIndex =index; 
    });
  }
  // 动态页面
  Dynamic _dynamic;
  // 家人页面
  Members _members;
  // 家规页面
  FamilyRule _familyRule;
  _currentPage() {
    switch (this._selectedIndex) {
      case 0:
        if(_dynamic==null) {
          _dynamic =new Dynamic(tabController:this._tabController);
        }
        return _dynamic;
      case 1:
        if(_members==null) {
          _members=new Members();
        }
        return _members;
      case 2: 
        if(_familyRule==null) {
          _familyRule=new FamilyRule();
        }
        return _familyRule;
      default:
    }
  }
  @override
  void initState() {
    super.initState();
    _tabController= new TabController(length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('./lib/images/ic_launcher.png',height: 16.0,width: 16.0),
            ),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },),
        title: Text(widget.title),
        centerTitle: true,
        bottom: _selectedIndex==0? TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(text: '家分享'),
            new Tab(text: '家视频'),
            new Tab(text: '家图片'),
          ],
        ):null,
      ),
      drawer: new MyDrawer(),
      body: _currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('家态')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('家人')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('家规')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Theme.of(context).accentColor,
        onTap: _tapItem,
      ),
    );
  }
}
