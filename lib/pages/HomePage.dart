import 'package:flutter/material.dart';
import 'Home.dart';
import 'Phone.dart';
import 'Search.dart';
import 'RxDartDemo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages;
  int _currentIndex = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = new List()..add(Home())..add(RxDartDemo())..add(Search())..add(Phone());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print("settings");
            },
          ),
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () {
              print("email");
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.account_circle),
            title: Text("我的"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.search),
            title: Text("搜搜"),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.phone),
            title: Text("通讯"),
          ),
        ],
        onTap: (value) {
          print(value);
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: Center(
        child: _pages[_currentIndex],
      ),
    );
  }
}
