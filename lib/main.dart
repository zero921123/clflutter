import 'package:flutter/material.dart';
import 'BlocDemo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //按钮被点击的高量颜色
        splashColor: Colors.blue, //点击按钮的博文颜色
        primarySwatch: Colors.green,
      ),
      routes: {
        "/":(context)=>BlocDemo(),
      },

    );
  }
}

 