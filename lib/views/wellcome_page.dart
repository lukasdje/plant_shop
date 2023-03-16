import 'package:flutter/material.dart';

class WellComePage extends StatelessWidget {
  const WellComePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/background.jpg',
      fit: BoxFit.cover,
    );
  }
}
