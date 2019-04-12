import 'package:flutter/material.dart';

class ClPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      onPageChanged:(index){
        print("currentPage is $index");
      },
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 1.0,

      ),
      children: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment(0, 0),
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.black45,
          alignment: Alignment(0, 0),
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.orange,
          alignment: Alignment(0, 0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        )
      ],
    );
  }
}
