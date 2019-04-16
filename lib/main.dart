import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/Home.dart';
import 'pages/Phone.dart';
import 'pages/search.dart';
import 'pages/RxDartDemo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        highlightColor: Color.fromRGBO(255, 255, 255,0.5), //按钮被点击的高量颜色
        splashColor: Colors.blue, //点击按钮的博文颜色
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
      ),
      // home: HomePage(),
      initialRoute: "/",
      routes: {
        "/":(context)=>HomePage(),
        "/home":(context)=>Home(),
        "/Rx":(context)=>RxDartDemo()
      },

    );
  }
}

 