import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/i18n/app_language.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/reveal.dart';
import '../../core/widgets/section_title.dart';
import 'project_card.dart';
import 'project_drawer.dart';
import 'projects_data.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  int _filter = 0;

  @override
  Widget build(BuildContext context) {
    final projects = projectsFor(context.lang);
    final filters = projectFiltersFor(context.lang);
    final visible = projects
        .where((p) => _filter == 0 || p.category == filters[_filter])
        .toList();

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Reveal(
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.end,
                spacing: 16,
                runSpacing: 16,
                children: [
                  SectionTitle(context.tr('Projetos', 'Projects')),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      for (final (i, f) in filters.indexed)
                        _FilterChip(
                          label: f,
                          selected: i == _filter,
                          onTap: () => setState(() => _filter = i),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (visible.isEmpty)
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text(
                context.tr(
                  'Nada adicionado nesta categoria ainda.',
                  'Nothing added in this category yet.',
                ),
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: AppColors.muted,
                ),
              ),
            ),
          for (final p in visible)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Reveal(
                key: ValueKey(p.name),
                child: ProjectCard(
                  project: p,
                  number: (projects.indexOf(p) + 1).toString().padLeft(2, '0'),
                  onTap: () =>
                      showProjectDrawer(context, p, projects.indexOf(p) + 1),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: selected ? AppColors.navy : Colors.transparent,
            borderRadius: BorderRadius.circular(999),
          ),
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: selected ? Colors.white : AppColors.navy,
            ),
          ),
        ),
      ),
    );
  }
}
