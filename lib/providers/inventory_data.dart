import 'package:flutter/material.dart';

import '../models/inventory_location.dart';
import '../models/inventory_category.dart';
import '../models/inventory_item.dart';
import '../utils/custom_icons/custom_icons.dart';

class InventoryData with ChangeNotifier {
  // ignore: prefer_final_fields
  List<InventoryItem> _inventories = <InventoryItem>[
    InventoryItem(
      name: 'Butter',
      inventoryLoc: InventoryLocation.fridge,
      inventoryCat: InventoryCategory(
        categoryName: 'Dairy',
        categoryIcon: const Icon(CustomIcons.milk_bottle),
      ),
      inventoryQuant: 2,
      purchaseDate: DateTime.parse('2022-01-18'),
      shelfLife: const Duration(days: 15),
    ),
    InventoryItem(
      name: 'Egg',
      inventoryLoc: InventoryLocation.fridge,
      inventoryCat: InventoryCategory(
        categoryName: 'Dairy',
        categoryIcon: const Icon(CustomIcons.milk_bottle),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-06'),
      shelfLife: const Duration(days: 10),
    ),
    InventoryItem(
      name: 'Apple',
      inventoryLoc: InventoryLocation.fridge,
      inventoryCat: InventoryCategory(
        categoryName: 'Fruits',
        categoryIcon: const Icon(CustomIcons.fruit),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-12'),
      shelfLife: const Duration(days: 8),
    ),
    InventoryItem(
      name: 'Banana',
      inventoryLoc: InventoryLocation.fridge,
      inventoryCat: InventoryCategory(
        categoryName: 'Fruits',
        categoryIcon: const Icon(CustomIcons.fruit),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-12'),
      shelfLife: const Duration(days: 8),
    ),
    InventoryItem(
      name: 'Bread',
      inventoryLoc: InventoryLocation.pantry,
      inventoryCat: InventoryCategory(
        categoryName: 'Bread',
        categoryIcon: const Icon(CustomIcons.bread),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-26'),
      shelfLife: const Duration(days: 7),
    ),
    InventoryItem(
      name: 'Rice',
      inventoryLoc: InventoryLocation.pantry,
      inventoryCat: InventoryCategory(
        categoryName: 'Staple',
        categoryIcon: const Icon(CustomIcons.rice),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-20'),
      shelfLife: const Duration(days: 180),
    ),
    InventoryItem(
      name: 'Flour',
      inventoryLoc: InventoryLocation.pantry,
      inventoryCat: InventoryCategory(
        categoryName: 'Staple',
        categoryIcon: const Icon(CustomIcons.rice),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-24'),
      shelfLife: const Duration(days: 180),
    ),
    InventoryItem(
      name: 'Pasta',
      inventoryLoc: InventoryLocation.pantry,
      inventoryCat: InventoryCategory(
        categoryName: 'Staple',
        categoryIcon: const Icon(CustomIcons.rice),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-20'),
      shelfLife: const Duration(days: 180),
    ),
    InventoryItem(
      name: 'Salt',
      inventoryLoc: InventoryLocation.pantry,
      inventoryCat: InventoryCategory(
        categoryName: 'Condiments & dips',
        categoryIcon: const Icon(CustomIcons.salt),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-20'),
      shelfLife: const Duration(days: 180),
    ),
    InventoryItem(
      name: 'Salmon',
      inventoryLoc: InventoryLocation.freezer,
      inventoryCat: InventoryCategory(
        categoryName: 'Seafood',
        categoryIcon: const Icon(CustomIcons.fish),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-20'),
      shelfLife: const Duration(days: 7),
    ),
    InventoryItem(
      name: 'Pork',
      inventoryLoc: InventoryLocation.freezer,
      inventoryCat: InventoryCategory(
        categoryName: 'Meat',
        categoryIcon: const Icon(CustomIcons.meat),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-20'),
      shelfLife: const Duration(days: 30),
    ),
    InventoryItem(
      name: 'Beef',
      inventoryLoc: InventoryLocation.freezer,
      inventoryCat: InventoryCategory(
        categoryName: 'Meat',
        categoryIcon: const Icon(CustomIcons.meat),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-20'),
      shelfLife: const Duration(days: 40),
    ),
    InventoryItem(
      name: 'Brocolli',
      inventoryLoc: InventoryLocation.fridge,
      inventoryCat: InventoryCategory(
        categoryName: 'Vegetables',
        categoryIcon: const Icon(CustomIcons.vegetable),
      ),
      inventoryQuant: 1,
      purchaseDate: DateTime.parse('2022-01-20'),
      shelfLife: const Duration(days: 5),
    ),
  ];

  InventoryData();

  List<InventoryItem> get inventories {
    return [..._inventories];
  }
}
