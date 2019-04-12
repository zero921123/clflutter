import 'package:flutter/material.dart';
import '../model/datas.dart';

class Home extends StatefulWidget {
  final String _title = "首页";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _list = List()
      ..add(Data("笑话", "13", "男的"))
      ..add(Data("王坤", "14", "男的"))
      ..add(Data("三娃", "19", "女的"))
      ..add(Data("大卫", "10", "男的"))
      ..add(Data("林立", "14", "男的"));
      print(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          Data data = _list[index];
          return Container(
            width: 300.0,
            height: 400.0,
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.green, width: 3.0)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 10.0,
                  top: 10.0,
                  height: 100.0,
                  width: 100.0,
                  child: Text("sss"),
                ),
                Positioned(
                  height: 100.0,
                  width: 100.0,
                  left: 10.0,
                  bottom: 10.0,
                  child: Text(data.gender),
                ),
                Positioned(
                  height: 100.0,
                  width: 100.0,
                  right: 10.0,
                  top: 10.0,
                  child: Text(data.age),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
