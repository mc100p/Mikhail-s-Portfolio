import 'package:flutter/material.dart';
import 'package:test/components/hero_section/hero_section.dart';
import 'package:test/components/about_section/about_section.dart';
import 'package:test/components/contact_section/contact_section.dart';
import 'package:test/components/footer_section/footer_section.dart';
import 'package:test/components/project_section/project_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();

  // Give each section its own key:
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  // Helper to get the y-offset of a widget:
  double _getYOffset(GlobalKey key) {
    final ctx = key.currentContext;
    if (ctx == null) return 0;
    final box = ctx.findRenderObject() as RenderBox;
    // localToGlobal relative to the scrollable’s origin:
    return box
            .localToGlobal(Offset.zero, ancestor: context.findRenderObject())
            .dy +
        scrollController.offset;
  }

  void _scrollTo(GlobalKey key) {
    final target = _getYOffset(key);
    scrollController.animateTo(
      target,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mikhail O. Campbell'),
        actions: [
          TextButton(
            onPressed: () => _scrollTo(_aboutKey),
            child: Text('About Me', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _scrollTo(_projectsKey),
            child: Text('Projects', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => _scrollTo(_contactKey),
            child: Text('Contact', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            HeroSection(globalKey: _aboutKey),
            AboutSection(),
            ProjectsSection(navigationKey: _projectsKey),
            ContactSection(navigationKey: _contactKey),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
