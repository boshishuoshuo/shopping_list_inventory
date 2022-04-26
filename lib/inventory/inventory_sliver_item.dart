import 'package:flutter/material.dart';

import '../models/inventory_item.dart';

class InventorySliverItem extends StatelessWidget {
  final InventoryItem inventoryItem;

  const InventorySliverItem(this.inventoryItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.circle),
        title: Text(inventoryItem.name),
        subtitle: Text('you have ${inventoryItem.inventoryQuant} in stock'),
      ),
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    );
  }
}
