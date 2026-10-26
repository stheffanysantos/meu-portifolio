import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  String _filter = 'Todos';

  @override
  Widget build(BuildContext context) {
    final visible = projects
        .where((p) => _filter == 'Todos' || p.category == _filter)
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
                  const SectionTitle('Projetos'),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      for (final f in projectFilters)
                        _FilterChip(
                          label: f,
                          selected: f == _filter,
                          onTap: () => setState(() => _filter = f),
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
                'Nada adicionado nesta categoria ainda. Adicione itens em PROJECTS com a category correspondente (UX/UI ou Artigos).',
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
