import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  final Map arguments;
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
   //required this.arguments 表示arguments是必须传入的命名参数
  SearchPage({Key? key,required this.arguments}) : super(key: key);

  _SearchPageState createState() => _SearchPageState(arguments:this.arguments);
}

class _SearchPageState extends State<SearchPage> {
  Map arguments;
   //required this.arguments 表示arguments是必须传入的命名参数
  _SearchPageState({required this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Container(
        child: Text("pid=${arguments["pid"]}"),
      ),
    );
  }
}

