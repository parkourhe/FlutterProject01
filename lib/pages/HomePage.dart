import 'package:flutter/material.dart';

// 有状态组件
class HomePage extends StatefulWidget{
  @override
  _Homepage createState() {
    // TODO: implement createState
    return _Homepage();
  }
  

}


class _Homepage extends State<HomePage>{
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body: Center(
      child: Text('首页'),
    )
    );
  }

  

}