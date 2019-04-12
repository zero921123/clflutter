import 'package:flutter/material.dart';

class JbzjDemo extends StatefulWidget {
  @override
  _JbzjDemoState createState() => _JbzjDemoState();
}

class _JbzjDemoState extends State<JbzjDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(

            image: NetworkImage(
                "http://p4.so.qhmsg.com/sdr/400__/t01431f7852cf6696f9.jpg"),
            alignment: Alignment.topCenter,
            repeat: ImageRepeat.repeat,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.indigoAccent[400].withOpacity(0.5),
                BlendMode.softLight)),

      ),
      // color: Colors.grey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                  width: 1.0,
                  color: Colors.red,
                ),
                // borderRadius: BorderRadius.circular(16.0),
                boxShadow: [],
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(1, 32, 255, 1.0),
                  Color.fromRGBO(7, 3, 255, 1.0),
                  Color.fromRGBO(7, 255, 255, 1.0),
                  Color.fromRGBO(7, 102, 255, 1.0),
                ])),
            //  gradient: LinearGradient(
            //    begin:Alignment.bottomCenter ,
            //    end: Alignment.topCenter,
            //    colors: [
            //   Color.fromRGBO(3, 44, 255, 1.0),
            //   Color.fromRGBO(6, 34, 255, 1.0),
            //   Color.fromRGBO(7, 3, 255, 1.0),
            //   Color.fromRGBO(12, 2, 255, 1.0),
            // ])),
          ),
          
        ],
      ),
    );
  }
}
