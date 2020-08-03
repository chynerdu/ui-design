import 'package:flutter/material.dart';
import 'package:madesoftlogic/screens/form/new-form.dart';
import 'package:madesoftlogic/screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dev Test',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      routes: buildRoutes(context),
    );
  }

  buildRoutes(context) {
    var routes = {
      '/': (BuildContext context) => Home(),
      '/form': (BuildContext context) =>FormScreen(),
    };
    return routes;
   }
}
