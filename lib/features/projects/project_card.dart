import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_colors.dart';
import '../../core/widgets/responsive_split.dart';
import 'project.dart';
import 'widgets/image_carousel.dart';

const _coverHeight = 240.0;

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.project,
    required this.number,
    required this.onTap,
  });

  final Project project;
  final String number;
  final VoidCallback onTap;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final p = widget.project;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: AppColors.navy,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              if (_hovered)
                BoxShadow(
                  color: AppColors.navy.withValues(alpha: .22),
                  blurRadius: 36,
                  offset: const Offset(0, 18),
                ),
            ],
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final cover = _Cover(project: p, number: widget.number);
              final info = _Info(project: p);

              if (constraints.maxWidth < ResponsiveSplit.breakpoint) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: _coverHeight, child: cover),
                    info,
                  ],
                );
              }

              final half = constraints.maxWidth / 2;
              return Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: half),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: _coverHeight,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: info,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: half,
                    child: cover,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Cover extends StatelessWidget {
  const _Cover({required this.project, required this.number});

  final Project project;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 240),
      color: project.color,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (project.images.isEmpty)
            Text(
              project.initials,
              style: GoogleFonts.poppins(
                fontSize: 96,
                fontWeight: FontWeight.w800,
                letterSpacing: -4.8,
                color: project.ink,
              ),
            )
          else ...[
            const SizedBox(width: double.infinity, height: 240),
            Positioned.fill(child: ImageCarousel(images: project.images)),
          ],
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
              decoration: BoxDecoration(
                color: AppColors.navy,
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                '$number · ${project.category}',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.name,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w800,
              height: 1.05,
              letterSpacing: -.64,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            project.short,
            style: GoogleFonts.poppins(
              color: AppColors.cardText,
              fontSize: 16,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final t in project.tags)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.cardTag, width: 2),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    t,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
            decoration: BoxDecoration(
              color: project.color,
              borderRadius: BorderRadius.circular(999),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  project.isArticle ? 'Ler artigo' : 'Explorar projeto',
                  style: GoogleFonts.poppins(
                    color: project.ink,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '→',
                  style: GoogleFonts.poppins(color: project.ink, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
