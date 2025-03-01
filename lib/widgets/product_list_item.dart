import 'package:flutter/material.dart';
import '../constants.dart';

class ProductListItem extends StatelessWidget {
  final String title;
  final String orderNumber;
  final String description;
  final bool isSelected;

  const ProductListItem({
    super.key,
    this.title = 'Abc Product',
    this.orderNumber = '123',
    this.description = 'Lorem Ipsum is simply dummy text of the Lorem Ipsur',
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color.fromARGB(255, 230, 232, 245)
            : const Color.fromARGB(0, 127, 127, 127),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
              Text(
                'Order no # $orderNumber',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textLight,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
