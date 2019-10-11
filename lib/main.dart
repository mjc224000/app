import 'package:flutter/material.dart';
import 'AppBottomNavigationBar.dart';
import 'MyPage.dart' show MyPage;
import 'Stir.dart' show StirPage;
import 'Discovery.dart' show DiscoveryPage;
import 'Info.dart' show InfoPage;
import 'MyPageInfo.dart' show MyPageInfo;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/MyPageInfo":(context)=>MyPageInfo()
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final Map<int, Map> map = {
    0: {"title": "Info Page", "body": InfoPage()},
    1: {"title": "Stir Page", "body": StirPage()},
    2: {"title": "Discovery Page", "body": DiscoveryPage()},
    3: {"title": "My Page", "body": MyPage()},
  };

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  List<Widget> pages = List<Widget>();

  void handleIndexChange(index) {
    setState(() {
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.map[_index]["title"]),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.

          child: widget.map[_index]["body"]),
      bottomNavigationBar: AppBottom(
        handleIndexChange: this.handleIndexChange,
        index: _index,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      drawer: Drawer(child: ListView(
        children: <Widget>[
          Text("1111")
        ],
      ),),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
