import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';
import '../project.dart';

class NewsletterSection extends StatelessWidget {
  const NewsletterSection({
    super.key,
    required this.number,
    required this.section,
    required this.accent,
    required this.accentInk,
  });

  final int number;
  final ProjectSection section;
  final Color accent;
  final Color accentInk;

  @override
  Widget build(BuildContext context) {
    final body = GoogleFonts.poppins(fontSize: 15.5, height: 1.6);

    return Container(
      margin: const EdgeInsets.only(top: 28),
      padding: const EdgeInsets.only(top: 28),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.divider, width: 2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: accent,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  number.toString().padLeft(2, '0'),
                  style: GoogleFonts.poppins(
                    color: accentInk,
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  section.title,
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -.4,
                  ),
                ),
              ),
            ],
          ),
          if (section.text.isNotEmpty) ...[
            const SizedBox(height: 14),
            Text(section.text, style: body),
          ],
          if (section.bullets.isNotEmpty) ...[
            const SizedBox(height: 14),
            for (final bullet in section.bullets)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 11, right: 12),
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: AppColors.purple,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Expanded(child: Text(bullet, style: body)),
                  ],
                ),
              ),
          ],
          if (section.chips.isNotEmpty) ...[
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final chip in section.chips)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.chip,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Text(
                      chip,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
