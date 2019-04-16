import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final String _title="搜索";
  @override
   SearchState createState() =>  SearchState();
}

class  SearchState extends State <Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: ListView.builder(
           itemCount: 20,
           itemBuilder: (BuildContext context,int index){
             return ListTile(
               leading: Icon(Icons.add),
               title: Text("data ${index}",style: TextStyle(
                 color: Colors.yellow,
                 fontSize: 30.0,
                 fontWeight: FontWeight.bold,
               ),),
               subtitle: Text("subtitle ${index}",style: TextStyle(
                 color: Colors.green,
                 wordSpacing: 12.0,
                 fontWeight: FontWeight.bold,
               ),),
               selected: true,
               onTap: (){
                 showBottomSheet(
                   context: context,
                   builder: (context){
                     return Container(
                       height: 50.0,
                       child: Row(
                         children: <Widget>[Chip(label: Icon(Icons.adb),)
                         ,Chip(label: Icon(Icons.adb),),Chip(label: Icon(Icons.adb),)],
                       ),
                     );                   }
                 );
               },
               
             );
           },
         )
       ),
    );
  }
}