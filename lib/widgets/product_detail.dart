import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String title;
  final String orderNumber;

  const ProductDetail({
    super.key,
    this.title = 'Abc Product',
    this.orderNumber = '123',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product header
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D2149),
                ),
              ),
              Text(
                'Order no # $orderNumber',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),

          // Main content - two columns
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left column - main paragraph
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 242, 242, 242),
                      border: Border.all(color: const Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only fier including versions of Lorem Ipsum',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0D2149),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 400),

                // Right column - two info boxes
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      // Top info box
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 242, 242, 242),
                          border: Border.all(color: const Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF0D2149),
                          ),
                        ),
                      ),

                      const SizedBox(height: 500),

                      // Bottom info box
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 242, 242, 242),
                          border: Border.all(color: const Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF0D2149),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
