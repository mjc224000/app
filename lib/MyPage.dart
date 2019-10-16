
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
class Card extends StatelessWidget {
  Card({this.text = "", @required this.cb});

  final String text;

  final VoidCallback cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(
                Icons.message,
                size: 35,
                color: Colors.black45,
              ),
              width: 100,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.chevron_right,
                  size: 40,
                ),
                onPressed: () {
                  cb();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.green,
      child: Center(
          child: Container(
        height: 100,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("img/avatar.png"),
              radius: 30,
            ),
            Text(
              "ws",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      )),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Header(),
        Card(
            text: "我的消息",
            cb: () {
              Navigator.pushNamed(context, "/MyPageInfo");
            }),
        Card(text: "阅读记录", cb: () async {
         var futureString =await BarcodeScanner.scan();

           print("$futureString,111111");
        }),
        Card(
          text: "我的博客",
        ),
        Card(
          text: "我的问答",
        ),
        Card(
          text: "我的活动",
        )
      ]),
    );
  }
}
