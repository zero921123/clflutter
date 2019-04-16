import 'package:flutter/material.dart';
import 'CounterHome.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ControllerProvider(
      bloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bloc"),
          centerTitle: true,
          elevation: 1.0,
        ),
        body: CounterHome(),
        floatingActionButton: ConterActionButton(),
      ),
    );
  }
}
