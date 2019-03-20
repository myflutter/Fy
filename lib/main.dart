import 'package:flutter/material.dart';
import './dio/httpUtil.dart';

void main() {
  return runApp(MyApp());
}

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
  int _counter = 0;
  int _selectedIndex= 0;
  TabController _tabController;
  Future _incrementCounter() async{
    String url = '/novelApi';
    var response=await HttpUtil().get(url);
    print(response);
    
  }
  _tapItem(index) {
    setState(() {
     _selectedIndex =index; 
    });
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
        title: Text(widget.title),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(text: '动态'),
            new Tab(text: '视频'),
            new Tab(text: '图片'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
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
