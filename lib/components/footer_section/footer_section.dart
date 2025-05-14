import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[900],
      child: Center(
        child: Text(
          '© 2025 Mikhail O. Campbell',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
