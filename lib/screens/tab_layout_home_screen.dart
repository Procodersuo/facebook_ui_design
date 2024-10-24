import 'package:flutter/material.dart';
import 'package:flutter/material.dart';




class TabLayoutHomeScreen extends StatelessWidget {
  static const id="TabLayoutHomeScreen";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6, child: Scaffold(
      appBar: AppBar(
        title: const Text("Facebook"),
        bottom: const TabBar(tabs: [
          // will update icon
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ]),
      ),
      body: TabBarView(children: [

      ]),
    ));
  }
}


