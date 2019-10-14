import 'package:flutter/material.dart';

// 有状态组件
class MyPage extends StatefulWidget{
  @override
  _MyPage createState() {
    // TODO: implement createState
    return _MyPage();
  }
  

}


class _MyPage extends State<MyPage>{
  // 初始化页面显示
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body: Center(
      child: Text('我的页面'),
    )
    );
  }

  

}