/*
2022年7月29日17点14分
*/
import 'package:flutter/material.dart';
import '../Form.dart';
class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
              Navigator.pushNamed(context,"/form");
              //     .push(MaterialPageRoute(builder: (context) => FormPage(str:"Test")));
            },
            color: Colors.blue,
            textTheme: ButtonTextTheme.primary),
      ],
    );
  }
}