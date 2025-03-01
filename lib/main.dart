// Flutter application for Hupply
// Branch: my_room
// Author: mudassirhumaiai
// Date: 2023

import 'package:flutter/material.dart';
import 'widgets/nav_bar.dart';
import 'widgets/sidebar.dart';
import 'widgets/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hupply',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          surface: Colors.white,
        ),
      ),
      home: const HupplyHomePage(),
    );
  }
}

class HupplyHomePage extends StatefulWidget {
  const HupplyHomePage({super.key});

  @override
  State<HupplyHomePage> createState() => _HupplyHomePageState();
}

class _HupplyHomePageState extends State<HupplyHomePage> {
  int _selectedProductIndex = 0;

  void _selectProduct(int index) {
    setState(() {
      _selectedProductIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top navigation bar
          const NavBar(),

          // Main content
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left sidebar with product list
                Sidebar(
                  onProductSelected: _selectProduct,
                  selectedIndex: _selectedProductIndex,
                ),

                // Main content area
                Expanded(
                  child: ProductDetail(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
