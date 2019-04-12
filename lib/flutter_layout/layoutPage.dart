import 'package:flutter/material.dart';

class layoutPage extends StatefulWidget {
  @override
  _layoutPageState createState() => _layoutPageState();
}

class _layoutPageState extends State<layoutPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text("A"),
          Text("B"),
          Text("C"),
        ],
      ),
      bottomNavigationBar:Container(
        height: 50.0,
        child: TabBar(
        indicator: BoxDecoration(
          
          shape:BoxShape.rectangle,
          color:Colors.black,
        ),
        indicatorColor: Colors.yellow,
        unselectedLabelColor: Colors.blue,
        labelColor: Colors.red,
        controller: _tabController,
        indicatorSize:TabBarIndicatorSize.tab ,
        onTap: (index){

        },
        tabs: <Widget>[
          Tab(
            
            text: "首页",
            icon: Icon(Icons.home),
          ),
          Tab(
            text: "列表",
            icon: Icon(Icons.list),
          ),
          Tab(
            text: "我的",
            icon: Icon(Icons.message),
          )
        ],
      ),

      ) 
    );
  }
}
