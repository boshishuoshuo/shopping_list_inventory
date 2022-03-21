import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import './screens/tabs_screen.dart';
import './providers/inventory_data.dart';

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
        textTheme: TextTheme(
          bodyText2: GoogleFonts.notoSans(fontSize: 14),
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => InventoryData(),
        child: const TabsScreen(),
      ),
    );
  }
}
