import 'package:app/Carousel.dart';
import 'package:dynamic_list_view/DynamicListView.dart';
import 'package:flutter/material.dart';
import 'dart:async';
 class DiscoveryPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return ListView(
       children: <Widget>[
         Carousel(),
         Container(
           child:Row(
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
           ) ,
           padding: EdgeInsets.symmetric(vertical: 8),
         ),
         Container(
           child: Text("111"),
         )
       ],
     );
   }
 }
 