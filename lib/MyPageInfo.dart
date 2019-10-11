import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({this.text = "", this.widget = const Text("[]")});

  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Text(text),
          widget
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)), );
  }
}

class MyPageInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的资料"),
      ),
      body:Container(
        child:  Column(
          children: <Widget>[
            ListItem(
              text: "头像",
              widget: CircleAvatar(
                backgroundImage: AssetImage('img/avatar.png'),
              ),
            ),
            ListItem(text: "昵称", widget: Text("ws")),
            ListItem(
                text: "加入时间", widget: Text(DateTime.now().toLocal().toString())),
            ListItem(
              text: "所在地",
              widget: Text("长沙"),
            ),
            ListItem(
              text: "开发平台",
              widget: Text("ios android web server"),
            ),
            ListItem(
              text: "专长领域",
              widget: Text("nmsl"),
            )
          ],
        ),
      )
    );
  }
}
