import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        children: [
          Text(
            'Mikhail O. Campbell',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Software Developer | Mobile & Web Apps',
            style: TextStyle(fontSize: 20, color: Colors.redAccent),
          ),
        ],
      ),
    );
  }
}
