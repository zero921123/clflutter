import 'package:flutter/material.dart';

class CLTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("自动有的TabBarController"),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.filter_vintage),
              ),
              Tab(
                icon: Icon(Icons.filter_vintage),
              ),
              Tab(
                icon: Icon(Icons.filter_vintage),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("1"),
            Text("1"),
            Text("1"),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              DrawerHeader(
                child: Text("DrawerHeader_child"),
                decoration: BoxDecoration(color: Colors.grey),
              ),
              ListTile(
                title: Text(
                  "ListTile_title1",
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(Icons.flag),
              ),
              ListTile(
                title: Text(
                  "ListTile_title2",
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(Icons.radio),
              ),
              ListTile(
                title: Text(
                  "ListTile_title3",
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(Icons.scanner),
              )
            ],
          ),
        ),
        endDrawer: Drawer(),
      ),
    );
  }
}
