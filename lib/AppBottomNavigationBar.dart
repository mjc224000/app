import 'package:flutter/material.dart';

class AppBottom extends StatelessWidget {
  final handleIndexChange;

  AppBottom({this.index,this.handleIndexChange});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap:(i){
        handleIndexChange(i);
      },
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("资讯")),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_b_and_w), title: Text("动弹")),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page), title: Text("发现")),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind), title: Text("我的")),
        ]);
  }
}
