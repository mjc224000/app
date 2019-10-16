import 'package:app/Carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:rflutter_alert/rflutter_alert.dart';



class DiscoveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Carousel(),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("img/avatar.png"),
                    radius: 30,
                  ),
                  Text(
                    "sssssws",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("img/avatar.png"),
                    radius: 30,
                  ),
                  Text(
                    "sssssws",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("img/avatar.png"),
                    radius: 30,
                  ),
                  Text(
                    "sssssws",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("img/avatar.png"),
                    radius: 30,
                  ),
                  Text(
                    "sssssws",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 8),
        ), // avatar row
        Container(
          height: 200,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Image.asset(
              "img/banner.jpg",
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(color: Colors.white),
          ), //banner
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration:
              BoxDecoration(boxShadow: [BoxShadow(color: Colors.black12)]),
        ), //banner,
      ],
    );
  }
}
