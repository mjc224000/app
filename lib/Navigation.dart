 import 'package:flutter/material.dart';
class PageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


Widget AppScaffold(String title){

  return Scaffold(
    appBar: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(title),
    ),
    body: Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // Column is also layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print(index);
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("资讯")),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_b_and_w), title: Text("动弹")),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page), title: Text("发现")),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind), title: Text("我的")),
        ]),
  );
}