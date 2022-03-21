import './inventory_category.dart';
import './inventory_location.dart';

class InventoryItem {
  final String name;
  final InventoryLocation inventoryLoc;
  final InventoryCategory inventoryCat;
  final int inventoryQuant;
  final DateTime purchaseDate;
  final Duration shelfLife;

  InventoryItem({
    required this.name,
    required this.inventoryLoc,
    required this.inventoryCat,
    required this.inventoryQuant,
    required this.purchaseDate,
    required this.shelfLife,
  });
}
