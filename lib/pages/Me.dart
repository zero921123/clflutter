import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  final String _title="我的";
  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text(widget._title),
       ),
    );
  }
}