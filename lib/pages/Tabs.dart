/*
2022年7月29日17点12分
*/
import 'package:flutter/material.dart';
import "tabs/Home.dart";
import "tabs/Setting.dart";
import "tabs/Category.dart";
class Tabs extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  Tabs({Key? key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex=1;
  List _pageList = [HomePage(),CategoryPage(),SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: this._pageList[this._currentIndex],

        bottomNavigationBar: BottomNavigationBar(

          currentIndex: this._currentIndex,
          onTap: (int index){
              setState(() {
                  this._currentIndex=index;
              });
          },
          items: [
             BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页"
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),             
              label: "分类"
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "设置"             
            )
          ],
        ),
      );
  }
}
