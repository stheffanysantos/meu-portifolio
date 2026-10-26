import 'package:flutter/material.dart';

import '../about/about_section.dart';
import '../contact/contact_section.dart';
import '../hero/hero_section.dart';
import '../projects/projects_section.dart';
import 'widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _projectsKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final target = key.currentContext;
    if (target == null) return;
    Scrollable.ensureVisible(
      target,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 980),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: NavBar(
                    onProjects: () => _scrollTo(_projectsKey),
                    onAbout: () => _scrollTo(_aboutKey),
                    onContact: () => _scrollTo(_contactKey),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 96),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        HeroSection(
                          onProjects: () => _scrollTo(_projectsKey),
                          onContact: () => _scrollTo(_contactKey),
                        ),
                        ProjectsSection(key: _projectsKey),
                        AboutSection(key: _aboutKey),
                        ContactSection(key: _contactKey),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
