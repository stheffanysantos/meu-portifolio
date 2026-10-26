import 'package:flutter/material.dart';

class ProjectMetric {
  const ProjectMetric(this.value, this.label);

  final String value;
  final String label;
}

class ProjectSection {
  const ProjectSection({
    required this.title,
    this.text = '',
    this.bullets = const [],
    this.chips = const [],
  });

  final String title;
  final String text;
  final List<String> bullets;
  final List<String> chips;
}

class Project {
  const Project({
    required this.name,
    required this.initials,
    required this.category,
    required this.color,
    required this.ink,
    required this.tags,
    required this.short,
    required this.long,
    this.url = '',
    this.repoUrl = '',
    this.images = const [],
    this.metrics = const [],
    this.sections = const [],
  });

  final String name;
  final String initials;
  final String category;
  final Color color;
  final Color ink;
  final List<String> tags;
  final String short;
  final String long;
  final String url;
  final String repoUrl;
  final List<String> images;
  final List<ProjectMetric> metrics;
  final List<ProjectSection> sections;

  bool get isArticle => category == 'Artigos';

  int get readingMinutes {
    final text = StringBuffer(long);
    for (final s in sections) {
      text
        ..write(' ${s.text}')
        ..write(' ${s.bullets.join(' ')}')
        ..write(' ${s.chips.join(' ')}');
    }
    final words = text.toString().split(RegExp(r'\s+')).length;
    return (words / 180).ceil().clamp(1, 99);
  }
}
