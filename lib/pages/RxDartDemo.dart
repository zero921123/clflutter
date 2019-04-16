import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxDartDemo extends StatefulWidget {
  final String _title = "我的";
  @override
  _RxDartDemoState createState() => _RxDartDemoState();
}

class _RxDartDemoState extends State<RxDartDemo> {
  Observable<String> _ob;
  Observable<String> _ob2;
  Subject<String> _sb;
  Subject<String> _sbb;
  Subject<String> _sb2;
  Subject<String> _sb3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ob = Observable(Stream.fromIterable(["1", "2"]));
    _ob2 = Observable.fromFuture(Future.value("hello"));
    _sb = PublishSubject<String>();
    _sbb = PublishSubject<String>();
    _sbb.map((value) {
          return "ssss=>$value";
        })
        .where((value){return value.length>10;})
        .debounce(Duration(seconds: 1))
        .listen(print);
        
    _sb2 = BehaviorSubject<String>();
    _sb3 = ReplaySubject<String>();
    _sb3.add("event1");
    _sb3.add("event2");
    _sb3.add("event3");
    _sb3.add("event4");
    _sb.listen((value) => print("listent1 : $value"));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Wrap(
        children: <Widget>[
          FlatButton(
            child: Text("点击"),
            onPressed: () {
              _ob.listen(print);
              _ob2.listen(print);
            },
          ),
          FlatButton(
            child: Text("PublishSubject add"),
            onPressed: () {
              _sb.add("add data");
              _sb.listen((value) => print("listent2 : $value"));
              _sb.add("add new data");
            },
          ),
          FlatButton(
            child: Text("BehaviorSubject add"),
            onPressed: () {
              _sb2.add("add data old");
              _sb2.add("add data");
              _sb2.listen((value) => print("listent2 : $value"));
              _sb2.add("add new data");
            },
          ),
          FlatButton(
            child: Text("ReplaySubject add"),
            onPressed: () {
              _sb3.add("add data old");
              _sb3.add("add data");
              _sb3.listen((value) => print("listent2 : $value"));
              _sb3.add("add new data");
            },
          ),
          TextField(
            onChanged: (value) {
              _sbb.add(value);
            },
            onSubmitted: (value) => _sbb.add(value),
            decoration: InputDecoration(
              labelText: "Title",
            ),
          )
        ],
      )),
    );
  }
}
