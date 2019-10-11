import 'package:dynamic_list_view/DynamicListView.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[],
        )
      ],
    ));
  }
}

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
          itemBuilder: _itemBuilder,
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
