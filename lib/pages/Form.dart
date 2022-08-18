import 'package:flutter/material.dart';
class FormPage extends StatefulWidget {
  String str = "321";
  FormPage({Key? key, required String str}) : super(key: key)
  {
    this.str = str;
  }
  
  @override
  State<FormPage> createState() => _FormPageState(str:this.str);
}

class _FormPageState extends State<FormPage> {
  @override
  var _str = "Form";
  _FormPageState({var str})
  {
    this._str = str;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this._str),
      ),
      body: Text("Form"),
    );
  }
}