import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

class NewsletterHeader extends StatelessWidget {
  const NewsletterHeader({
    super.key,
    required this.project,
    required this.number,
    required this.onClose,
  });

  final Project project;
  final int number;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final edition = number.toString().padLeft(2, '0');

    return Container(
      color: project.color,
      padding: const EdgeInsets.fromLTRB(28, 28, 28, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'EDIÇÃO $edition · ${project.category.toUpperCase()}',
                  style: GoogleFonts.poppins(
                    color: project.ink,
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              InkResponse(
                onTap: onClose,
                child: Container(
                  width: 44,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.navy,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.close, color: Colors.white, size: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            project.name,
            style: GoogleFonts.poppins(
              color: project.ink,
              fontSize: 44,
              fontWeight: FontWeight.w800,
              height: 1.02,
              letterSpacing: -1.5,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            project.long,
            style: GoogleFonts.poppins(
              color: project.ink,
              fontSize: 16,
              height: 1.55,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '${project.readingMinutes} min de leitura',
            style: GoogleFonts.poppins(
              color: project.ink,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final tag in project.tags)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: project.ink, width: 1.5),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    tag,
                    style: GoogleFonts.poppins(
                      color: project.ink,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
