import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

//FutrueBuilder 的使用
//Json 转换 map 以及 map 构建model
//Futrue 对象的 then 方法使用



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: Text("http"),
        centerTitle: true,
      ),
      body: HttpDemo(),
    ));
  }
}

class HttpDemo extends StatefulWidget {
  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 要使用异步请求时可以用then进行数据获取
    // fatchPost().then(onValue);
  }

  onValue(list) {
    print(list.totla);
    print(list.list[1].image);
  }

  Future<ListModel> fatchPost() async {
    final http.Response data = await http.get(
        "https://easy-mock.com/mock/5b0f66bab0c1263f2ec2238f/zeroTest/repaymentList");
    print('''statusCode:
         ============================================================================
         ${data.statusCode}
         ============================================================================
         ''');
    print('''body:
         ============================================================================
         ${data.body}
         ============================================================================
         ''');
    print('''headers: 
         ============================================================================
         ${data.headers}
         ============================================================================
         ''');

    if (data.statusCode == 200) {
      Map jsonMap = json.decode(data.body)["data"];
      ListModel list = ListModel.FromJson(jsonMap);

      return list;
    } else {
      throw Exception("请求失败");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: fatchPost(),
        builder: (BuildContext context, AsyncSnapshot<ListModel> snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Text("loading......");
          }
          return Container(
            child: ListView.builder(
              itemCount: snapshot.data.list.length,
              itemBuilder: (context,index){
                ItemModel item = snapshot.data.list[index];
                return ListTile(
                  title: Text("${item.title}"),
                  subtitle: Text("${item.desc}"),
                  leading:  CircleAvatar(
                    backgroundImage: NetworkImage(item.image),
                    ),
                );
              },

            ),
          );

        },
      ),
    );
  }
}

class ListModel {
  String count;
  int totla;
  List<ItemModel> list;
  ListModel(this.count, this.totla, this.list);
  ListModel.FromJson(Map jsonMap)
      : count = jsonMap["count"],
        totla = jsonMap["totla"],
        list = jsonMap["list"]
            .map<ItemModel>((item) => ItemModel.FromJson(item))
            .toList();
}

class ItemModel {
  String image;
  String title;
  String desc;
  String people;
  String uptime;
  ItemModel(this.desc, this.image, this.people, this.title, this.uptime);
  ItemModel.FromJson(Map map)
      : image = map["image"],
        title = map["title"],
        desc = map["desc"],
        people = map["people"],
        uptime = map["uptime"];
}
