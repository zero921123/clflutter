import 'package:flutter/material.dart';


class ClIcon extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconBadge(icon: Icons.save, size: 30.0,),
    );
  }


}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;

  IconBadge({@required this.icon,@required this.size,Key key}):super(key:key)

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        boxShadow: [
          BoxShadow(color: Colors.black ,offset: Offset(1, 1)
          ,spreadRadius: 2,blurRadius: 3),
        ]
      ),
      child: Icon(this.icon,color: Colors.white,),
      width: size+50,
      height: size+50,
    );
  }
  
}