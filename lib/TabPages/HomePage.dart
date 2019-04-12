import 'package:flutter/material.dart';
import '../pages/Home.dart';
import '../pages/Me.dart';
import '../pages/Phone.dart';
import '../pages/Search.dart';
import 'ClTabBarController.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  TabController _HeaderController;

  List<Widget> _pages;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
    // _HeaderController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("首页"),  
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.add_alert),
          onPressed: () {
            print("leading");
          }, 
        ),
        bottom: TabBar(
          labelColor: Colors.black,
          controller: _controller,
          tabs: <Widget>[

            Tab(
              text: "me1",
              icon: Icon(Icons.add_call),
            ),
           Tab(
              text: "me2",
              icon: Icon(Icons.remove),
            ),
            Tab(
              text: "me3",
              icon: Icon(Icons.update),
            ),
            Tab(
              text: "me4",
              icon: Icon(Icons.delete),   
            ),

          ],
        ),
        actions: <Widget>[
          IconButton(
            tooltip: "设置",
            icon: Icon(Icons.settings),
            onPressed: () {
              print("settings");
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print("settings");
            },
          )
        ],
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.deepOrange,
        unselectedLabelColor: Colors.blue,
        controller: _controller,
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 0.1,
        tabs: [
          Tab(
            text: "首页",
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "我的",
            icon: Icon(Icons.account_circle),
          ),
          Tab(
            text: "搜索",
            icon: Icon(Icons.search),
          ),
          Tab(
            text: "通讯",
            icon: Icon(Icons.phone),
          ),
        ],
        onTap: (value) {
          print(value);
          setState(() {
          });
        },
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Home(),
          Me(),
          Phone(),
          CLTab(),
        ],
      ),
    );
  }
}
