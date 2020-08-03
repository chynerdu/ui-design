
import 'package:flutter/material.dart';
import 'package:madesoftlogic/screens/home/activity.dart';
import 'package:madesoftlogic/screens/home/dashboard.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homestate();
  }
}

class Homestate extends State<Home> with SingleTickerProviderStateMixin{
  TabController homeTabController;

  @override
  void initState() {
    super.initState();
    homeTabController = new TabController(vsync: this, length: 2);
  }

  handleMenuSelection(value) {
    switch(value) {
      case 1: 
        Navigator.pushNamed(context, '/form');
        break;
    }
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F3F8),
        appBar: AppBar(
          centerTitle: true,
          actions: <Widget>[
            PopupMenuButton<int>(
              icon: Icon(Icons.more_vert, color: Color(0xffE0115F),),
              onSelected: (value) {
                handleMenuSelection(value); 
              },
              itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Text("Add New"),
                ),
              ],
            )
          ],
          bottom: new TabBar(
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            indicatorColor: Color(0xffE0115F),
            controller: homeTabController,
            tabs: <Widget>[
            new Tab(child: Text('DASHBOARD',)),
            new Tab(child: Text('ACTIVITY',)),
          ],),
        ),
        
        body: new TabBarView(
          controller: homeTabController,
          children: <Widget>[
            Dashboard(),
            Activity()
          ]
        )       
      ),
         
      );
  }

}