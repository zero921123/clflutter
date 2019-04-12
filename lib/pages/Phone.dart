import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  final String _title="联系人";
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Text(widget._title),
       ),
    );
  }
}