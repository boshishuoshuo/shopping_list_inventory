import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './inventory_screen.dart';
import './shopping_screen.dart';
import './profile_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _screenOptions = [
    InventoryScreen(),
    ShoppingScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Theme(
        data: ThemeData(primarySwatch: Colors.grey),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Inventory'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Shopping'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          selectedIconTheme:
              IconThemeData(color: Theme.of(context).primaryColorLight),
          selectedLabelStyle: GoogleFonts.notoSans(fontSize: 12),
          unselectedLabelStyle: GoogleFonts.notoSans(fontSize: 12),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
