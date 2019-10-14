import 'package:flutter/material.dart';
import 'package:myproject3/pages/HomePage.dart';
import 'package:myproject3/pages/My_page.dart';
import 'package:myproject3/pages/search_page.dart';
import 'package:myproject3/pages/travel_page.dart';
// 有状态组件
class TabNavigator extends StatefulWidget{
  @override
  _TabNavigtorState createState() {
    // TODO: implement createState
    return _TabNavigtorState();
  }
  

}

class _TabNavigtorState extends State<TabNavigator>{
  // 当前页面
  int _currentIndex = 0; 

  // 没选中状态颜色
  final _defaultColor = Colors.grey;
  // 选中状态
  final _selectColor = Colors.blue;

  // 初始化页面显示
  final PageController _controller =  PageController(
    initialPage: 0,

  );

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body: PageView(
      // 页面发生改变时
      onPageChanged : (value){
          setState(() {
           _currentIndex = value; 
          });
      },
      controller: _controller,
      children: <Widget>[
        HomePage(),
        MyPage(),
        SearchPage(),
        TravelPage(),

      ],
    ),
    // 底部按钮导航栏
    bottomNavigationBar: BottomNavigationBar(
      // bottomNavgationBar里有个currentIndex属性
      currentIndex: _currentIndex,
      onTap: (index){
        // 通过控制器跳转
        _controller.jumpToPage(index);

        // 通过设置状态，设置当前页面
        setState(() {
          _currentIndex = index;
        });

      },
      // 对底部导航栏的文字进行固定
      type: BottomNavigationBarType.fixed,

      items:[
      BottomNavigationBarItem(
        icon: Icon(Icons.home,color:_defaultColor ,),
        // 激活状态下属性
        activeIcon: Icon(Icons.home,color:_selectColor),

        title: Text('首页',style: TextStyle(color: _currentIndex!=0?_defaultColor:_selectColor),)
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search,color:_defaultColor ,),
        // 激活状态下属性
        activeIcon: Icon(Icons.search,color:_selectColor),

        title: Text('搜索',style: TextStyle(color: _currentIndex!=1?_defaultColor:_selectColor),)
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.my_location,color:_defaultColor ,),
        // 激活状态下属性
        activeIcon: Icon(Icons.my_location,color:_selectColor),

        title: Text('我的页面',style: TextStyle(color: _currentIndex!=2?_defaultColor:_selectColor),)
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera,color:_defaultColor ,),
        // 激活状态下属性
        activeIcon: Icon(Icons.camera,color:_selectColor),

        title: Text('旅拍',style: TextStyle(color: _currentIndex!=3?_defaultColor:_selectColor),)
      )
    ]),
    );
  }

  

}