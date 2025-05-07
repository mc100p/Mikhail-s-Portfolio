import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Me', style: TextStyle(fontSize: 28, color: Colors.red)),
          const SizedBox(height: 10),
          Text(
            'Email: campbellmikhail26@gmail.com',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
