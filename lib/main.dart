import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventory and Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColorLight: Colors.deepOrange[400],
      ),
      home: const TabsScreen(),
    );
  }
}
