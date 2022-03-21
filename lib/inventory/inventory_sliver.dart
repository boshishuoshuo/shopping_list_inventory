import 'package:flutter/material.dart';

import '../models/inventory_item.dart';
import './inventory_sliver_item.dart';

class InventorySliver extends StatelessWidget {
  final List<InventoryItem> inventoryList;

  const InventorySliver(this.inventoryList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return InventorySliverItem(inventoryList[index]);
        },
        childCount: inventoryList.length,
      ),
    );
  }
}
