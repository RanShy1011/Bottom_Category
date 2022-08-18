/*
2022年7月29日17点14分
*/
import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text(
              "跳转到搜索页面",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.pushNamed(context,"/search",arguments:{
                "id":123
              });
            },
            color: Colors.blue,
            textTheme: ButtonTextTheme.primary),
      ],
    );
  }
}
