import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart' show ChatScreenArguments;
import 'Stir.dart' show ChatHeader, ChatContent;

class ChatScreen extends StatelessWidget {
  static const routeName = '/ChatScreen';

  @override
  Widget build(BuildContext context) {
    ChatScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("动弹详情"),
      ),
      body: ListView(
        children: <Widget>[
          ChatHeader(
            author: args.author,
            avatar: args.img,
          ),
          ChatContent(
            imgList: args.list,
            text: args.text,
          ),
          TabBar(
            tabNames: ['评论(10)', '赞（1）'],
            pages: <Widget>[CommentList(),Thumb()],
          ),
        ],
      ),
    );
  }
}

class TabBar extends StatefulWidget {
  TabBar({this.tabNames, this.pages});

  final List<String> tabNames;
  final List<Widget> pages;

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  int index = 0;

  handleIndexChange(int i) {
    setState(() {
      index = i;
    });
  }

  List<Widget> generateItems() {
    int i = 0;
    return widget.tabNames.map((str) {
      int _i = i;
      i++;
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: _i == index
                      ? BorderSide(width: 2, color: Colors.green)
                      : BorderSide(width: 0))),
          child: Center(
            child: GestureDetector(
              onTap: () {
                handleIndexChange(_i);
              },
              child: Text("$str",
                  style: _i == index
                      ? TextStyle(color: Colors.green)
                      : TextStyle()),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.black26),
          child: Row(
            children: generateItems(),
          ),
        ),
        widget.pages[index]
      ],
    );
  }
}

class CommentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '最新评论',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: <Widget>[
              Comment(
                avatar: "img/avatar2.jpg",
                isThumbed: true,
              )
            ],
          ),
        )
      ],
    );
  }
}

class Comment extends StatefulWidget {
  Comment({this.avatar, this.text, this.thumb = 0, this.isThumbed = false});

  final String avatar;
  final String text;
  final int thumb;
  final bool isThumbed;

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  int _thumb;
  bool _isThumb;

  @override
  initState() {
    super.initState();
    _thumb = widget.thumb;
    _isThumb = widget.isThumbed;
  }

  toggleThumb() {
    setState(() {
      _isThumb = !_isThumb;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('img/avatar2.jpg'),
                      ),
                    ),
                    Container(
                      height: 45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "长白山山长",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2019-10-15 08:56:50",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    _isThumb ? Text('${_thumb + 1}') : Text('$_thumb'),
                    IconButton(
                      onPressed: toggleThumb,
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.green,
                      ),
                    )
                  ],
                )
              ],
            )),
        Container(
          padding: EdgeInsets.only(left: 50),
          child: Text("11111"),
        ),
        Divider(
          indent: 50,
          thickness: 2,
          height: 20,
        )
      ],
    );
  }
}

class ThumbList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Thumb()
      ],
    );
  }
}

class Thumb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,top: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('img/avatar2.jpg'),
              )
            ],
          ),
          Divider(thickness: 2,)
        ],
      )
    );
  }
}
