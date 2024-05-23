import 'package:demo_flutter/Friday.dart';
import 'package:demo_flutter/Monday.dart';
import 'package:demo_flutter/Thursday.dart';
import 'package:demo_flutter/Tuesday.dart';
import 'package:demo_flutter/Wednesday.dart';
//import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Staff'),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: 'MON'),
            Tab(text: 'TUE'),
            Tab(text: 'WED'),
            Tab(text: 'THUR'),
            Tab(text: 'FRI'),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Monday(),
          new Tuesday(),
          new Wednesday(),
          new Thursday(),
          new Friday(),
        ],
      ),
    );
  }
}
