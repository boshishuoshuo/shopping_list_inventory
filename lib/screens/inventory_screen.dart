import 'package:flutter/material.dart';

import '../inventory/inventory_list.dart';
import '../inventory/write_sort_bar.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        InventoryList(),
        WriteSortBar(),
      ],
    );
  }
}
