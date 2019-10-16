import 'package:dynamic_list_view/DynamicListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:rflutter_alert/rflutter_alert.dart';
import 'model.dart' show ChatScreenArguments;


class StirPage extends StatefulWidget {
  @override
  _StirPage createState() => _StirPage();
}

class _StirPage extends State<StirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DynamicListView.build(
          itemBuilder: _myItemBuilder,
          dataRequester: _dataRequester,
          initRequester: _initRequester,
        ),
      ),
    );
  }

  Future<List> _initRequester() async {
    return Future.value(List.generate(15, (i) => i));
  }

  Future<List> _dataRequester() async {
    return Future.delayed(Duration(seconds: 2), () {
      return List.generate(10, (i) => 15 + i);
    });
  }

  Function _itemBuilder = (List dataList, BuildContext context, int index) {
    String title = dataList[index].toString();
    return ListTile(title: Text("Number $title"));
  };
}

Function _myItemBuilder = (List dataList, BuildContext context, int index) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/ChatScreen",
                arguments: ChatScreenArguments(
                    text: "skt 永远得不到龙王的认可",
                    author: "情感导师",
                    img: "img/avatar.png",
                    list: ['img/chat1.JPG', "img/chat2.JPG"]));
          },
          child: ChatHeader(
            author: "情感导师",
            avatar: "img/avatar.png",
          ), //
        ), //author header
        ChatContent(
          text: "skt 永远得不到龙王的认可",
          imgList: ['img/chat1.JPG', "img/chat2.JPG"],
        )
      ],
    ),
  );
};

class PopImage extends StatelessWidget {
  @override
  PopImage(this.img, {this.fit = BoxFit.cover});

  final String img;
  final BoxFit fit;

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
      onTap: () {
        Alert(context: context, title: "-", desc: "-", image: Image.asset(img))
            .show();
      },
    );
  }
}

class ChatHeader extends StatelessWidget {
  ChatHeader({this.author, this.avatar});

  final String author;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(avatar),
          radius: 20,
        ),
        Column(
          children: <Widget>[
            Text(
              author,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "2 分钟前",
              style: TextStyle(color: Colors.black45),
            )
          ],
        )
      ],
    );
  }
}

class ChatContent extends StatelessWidget {
  ChatContent({this.imgList, this.text});

  final List<String> imgList;
  final String text;

  @override
  Widget build(BuildContext context) {
    var a = imgList.map((str) {
      return Container(
        constraints: BoxConstraints(maxHeight: 150),
        child: PopImage(str),
        padding: EdgeInsets.symmetric(horizontal: 8.0),
      );
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Wrap(children: a.toList()),
        ),
        Text(text)
      ],
    );
  }
}
