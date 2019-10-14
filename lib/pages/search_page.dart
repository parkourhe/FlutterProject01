import 'package:flutter/material.dart';

// 有状态组件
class SearchPage extends StatefulWidget{
  @override
  _SearchPage createState() {
    // TODO: implement createState
    return _SearchPage();
  }
  

}


class _SearchPage extends State<SearchPage>{
  // 初始化页面显示
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body: Center(
      child: Text('搜索页面'),
    )
    );
  }

  

}