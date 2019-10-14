import 'package:flutter/material.dart';

// 有状态组件
class TravelPage extends StatefulWidget{
  @override
  _TravelPage createState() {
    // TODO: implement createState
    return _TravelPage();
  }
  

}


class _TravelPage extends State<TravelPage>{
  // 初始化页面显示
  final PageController _controller =  PageController(
    initialPage: 0,

  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body: Center(
      child: Text('拍卖页面'),
    )
    );
  }

  

}