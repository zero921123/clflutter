import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

class Phone extends StatefulWidget {
  final String _title = "联系人";
  @override
  _PhoneState createState() => _PhoneState();
}

class CLgridDelegate extends SliverGridDelegate{
  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    // TODO: implement getLayout
    return null;
  }

  @override
  bool shouldRelayout(SliverGridDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return null;
  }

}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.vertical,
        itemCount: 90,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.all(Radius.circular(45)),
                border: Border(
                  top: BorderSide(color: Colors.orange, width: 2.0),
                  left: BorderSide(color: Colors.orange, width: 2.0),
                  bottom: BorderSide(color: Colors.orange, width: 2.0),
                  right: BorderSide(color: Colors.orange, width: 2.0),
                )),
            alignment: Alignment(0, 0),
            child: Text("AC FUN"),
          );
        },
      ),
    );
  }

 
}
