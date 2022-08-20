import 'package:data_list/ListAllFootBall.dart';
import 'package:data_list/datalist.dart';
import 'package:flutter/material.dart';

class TabBarOnTop extends StatefulWidget {
  const TabBarOnTop({Key? key}) : super(key: key);

  @override
  State<TabBarOnTop> createState() => _TabBarOnTopState();
}

class _TabBarOnTopState extends State<TabBarOnTop> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.email)),
    Tab(icon: Icon(Icons.sports_football)),
    Tab(icon: Icon(Icons.favorite)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (value) {},
            controller: _controller,
            tabs: list,
          ),
          title: Text('Listing Duty Practice'),
        ),
        body: TabBarView(controller: _controller, children: [
          DataList(),
          ListAllFootbal(),
          Center(
              child: Text(
                _selectedIndex.toString(),
                style: TextStyle(fontSize: 40),
              )),
        ]),
      ),
    );
  }
}
