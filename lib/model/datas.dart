class Data{
final  String name;
final  String age;
final  String gender;
  const Data(this.name,this.age,this.gender):super();
}

List<Data> slist = new List()
                      ..add(Data("笑话","13","男的"))
                      ..add(Data("王坤","14","男的"))
                      ..add(Data("三娃","19","女的"))
                      ..add(Data("大卫","10","男的"))
                      ..add(Data("林立","14","男的"));
