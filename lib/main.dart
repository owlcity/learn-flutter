import 'package:flutter/material.dart';
import 'package:learn_material/demo/draw_demo.dart';
import 'package:learn_material/demo/listView_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter 学习',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Material'),
              elevation: 3.0,
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigation',
                  onPressed: () {
                    print('leading');
                  }),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('Search button is pressed.'),
                )
              ],
              bottom: TabBar(
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    Tab(icon: Icon(Icons.local_florist)),
                    Tab(icon: Icon(Icons.change_history)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  ])),
          // body: Hello(),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
          ),
          drawer: DrawerDemo()        
        ));
  }
}
