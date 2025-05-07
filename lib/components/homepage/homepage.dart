import 'package:flutter/material.dart';
import 'package:test/components/hero_section/hero_section.dart';
import 'package:test/components/about_section/about_section.dart';
import 'package:test/components/contact_section/contact_section.dart';
import 'package:test/components/footer_section/footer_section.dart';
import 'package:test/components/project_section/project_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mikhail O. Campbell'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('About Me', style: TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Projects', style: TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Contact', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(),
            const AboutSection(),
            const ProjectsSection(),
            const ContactSection(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
