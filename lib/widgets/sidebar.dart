import 'package:flutter/material.dart';
import '../constants.dart';
import 'product_list_item.dart';

class Sidebar extends StatelessWidget {
  final Function(int) onProductSelected;
  final int selectedIndex;

  const Sidebar({
    super.key,
    required this.onProductSelected,
    this.selectedIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.bottomLeft,
          radius: 1.6,
          colors: [
            Color.fromRGBO(99, 123, 244, 0.08), // Very subtle #637BF4
            Colors.white,
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: Column(
        children: [
          // Search bar and filter button row
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Search bar
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: AppColors.textLight),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.search, color: Colors.grey),
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          iconSize: 20,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Filter button
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(Icons.filter_list, color: Colors.white),
                ),
              ],
            ),
          ),

          // Product list
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => onProductSelected(index),
                  child: ProductListItem(
                    isSelected: index == selectedIndex,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
