import 'package:flutter/material.dart';

import '../models/inventory_item.dart';

class InventorySliverItem extends StatelessWidget {
  final InventoryItem inventoryItem;

  const InventorySliverItem(this.inventoryItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(inventoryItem.name);
  }
}
