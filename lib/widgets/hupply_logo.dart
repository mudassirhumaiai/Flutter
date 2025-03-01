import 'package:flutter/material.dart';

class HupplyLogoWidget extends StatelessWidget {
  final double height;

  const HupplyLogoWidget({
    super.key,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo3.png',
      height: height,
      fit: BoxFit.contain,
    );
  }
}
