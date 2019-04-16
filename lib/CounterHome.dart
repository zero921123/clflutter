import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  CounterBloc _counterBloc;

  @override
  Widget build(BuildContext context) {
    _counterBloc = ControllerProvider.of(context).bloc;

    return Center(
      //与Stream 绑定的 widget 当 数据变化时 build 方法会重新调用
        child: StreamBuilder(
      initialData: 0,
      stream: _counterBloc.count,
      builder: (context, snapshot) {
        return ActionChip(
          label: Text("${snapshot.data}"),
          onPressed: () {
            _counterBloc.add(1);
          },
        );
      },
    ));
  }
}

class ConterActionButton extends StatelessWidget {
  CounterBloc _counterBloc;

  @override
  Widget build(BuildContext context) {
    _counterBloc = ControllerProvider.of(context).bloc;

    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        _counterBloc.add(1);
      },
    );
  }
}

/**
 * CounterBloc 定义页面上所需要的数据和回调方法
 */
class CounterBloc {
  //被递增的参数
  int _count = 0;
  //StreamController 用于处理 控制 _count 的变化并将他同步到 对应的显示部件上
  final StreamController<int> _counterActionController = StreamController<int>();
  // 用于 add 信息给 StreamController  即发送数据给StreamController
  StreamSink<int> get counter => _counterActionController.sink;
  // 用于 监听 数据变化   通过 map 方法可以第传递给Stream 的数据进行处理 
  Stream<int> get count => _counterActionController.stream.map((value) {
      _count = _count + value;
      return _count;
    });


  CounterBloc() {
  
  }

  //子组件调用的add方法触发数据变化 
  void add(value) { 
    //变化的数据发送给StreamController 
     //StreamController  的 Stream 会监听到数据变化 并重绘与他绑定的widget
     counter.add(value);
  }


  void disPonse() {
    _counterActionController.close();
  }
}

/**
 * InheritedWidget 用户子组件的数据获取
 */
class ControllerProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  ControllerProvider({@required this.child, this.bloc}) : super(child: child);
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static ControllerProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(ControllerProvider);
}
