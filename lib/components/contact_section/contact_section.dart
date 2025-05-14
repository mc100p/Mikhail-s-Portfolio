import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final GlobalKey navigationKey;
  const ContactSection({super.key, required this.navigationKey});

  void launchEmail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: Uri.encodeFull('subject=Hello&body=I am reaching out about...'),
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw Exception('Could not launch $emailLaunchUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: navigationKey,
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text('Email: ', style: TextStyle(fontSize: 16)),
              TextButton(
                onPressed: () => launchEmail("campbellmikhail26@gmail.com"),
                child: Text(
                  "campbellmikhail26@gmail.com",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
