import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './inventory_sliver.dart';
import '../providers/inventory_data.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
        ),
        Consumer<InventoryData>(
          builder: (context, inventoryData, _) {
            return InventorySliver(inventoryData.inventories);
          },
        ),
      ],
    );
  }
}
