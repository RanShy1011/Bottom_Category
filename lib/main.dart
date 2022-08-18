import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import "pages/Form.dart";
import "pages/Search.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = {
    "/form": (contex) => FormPage(
          str: 'Test',
        ),
    "/search": (contex,{argumnets}) => SearchPage(arguments:arguments),
  };
  
  static get arguments => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Tabs(),
        // routes:{
        //   "/form":(contex)=>FormPage(str: 'Test',),
        //   "/search":(contex)=>SearchPage(),
        // }
        onGenerateRoute: (RouteSettings settings) {
// 统一处理
          final String? name = settings.name;
          final Function? pageContentBuilder = this.routes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
          }
        });
  }
}
