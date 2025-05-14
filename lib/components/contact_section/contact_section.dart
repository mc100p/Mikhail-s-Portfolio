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

  void _launchWebsite(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri); // This is the correct function to launch the URL
    } else {
      throw 'Could not launch $url';
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
          Row(
            children: [
              Text(
                'Instagram where I post regualarly: ',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                onPressed:
                    () =>
                        _launchWebsite("https://www.instagram.com/mcbflutter/"),
                child: Text("Mcbflutter", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
          Row(
            children: [
              Text('LinkedIn: ', style: TextStyle(fontSize: 16)),
              TextButton(
                onPressed:
                    () => _launchWebsite(
                      "https://www.linkedin.com/in/mikhail-campbell-5bab97169/",
                    ),
                child: Text(
                  "Mikhail Campbell",
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
