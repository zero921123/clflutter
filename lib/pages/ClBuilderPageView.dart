import 'package:flutter/material.dart';

class ClBuilderPageView extends StatelessWidget {
  List _list ;
  
    ClBuilderPageView({Key key}):super(key: key){
      _list = new List()
      ..add("http://p3.so.qhimgs1.com/sdr/400__/t0129f294ef4bbf4763.jpg")
      ..add("http://img3.duitang.com/uploads/item/201609/15/20160915080250_h2c8Q.thumb.700_0.jpeg")
      ..add("http://p1.so.qhimgs1.com/sdr/400__/t018934b49be9f643ad.jpg")
      ..add("https://n.sinaimg.cn/sinacn/w640h1143/20180227/2b51-fyrwsqi9099630.jpg");

    }
  Widget _buildPage(BuildContext context, int index) {
  
    return Stack(
      children: <Widget>[
          SizedBox.expand(
            child: Image.network(_list[index]
            ,fit: BoxFit.cover,),
            
          ),
          Positioned(
            top: 30,
            left: 90,
            child: Text("INDEX $index",style: TextStyle(color: Colors.white ,fontSize: 30.0),textAlign: TextAlign.start,),
          ),
      ],
    );


  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: _list.length,
      itemBuilder: _buildPage,
    );
  }
}
