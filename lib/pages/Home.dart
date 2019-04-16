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
      child: Container()
    );
  }
}
