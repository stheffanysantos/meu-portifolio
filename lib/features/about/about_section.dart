import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_colors.dart';
import '../../core/widgets/responsive_split.dart';
import '../../core/widgets/reveal.dart';
import '../../core/widgets/section_title.dart';

const _interests = [
  'Desenvolvimento Mobile',
  'Engenharia de Software',
  'Arquitetura de Aplicações',
  'User Experience',
  'Design Systems',
  'Acessibilidade',
  'Inteligência Artificial',
];

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final paragraph = GoogleFonts.poppins(fontSize: 17, height: 1.6);

    return Container(
      margin: const EdgeInsets.only(top: 48),
      padding: const EdgeInsets.only(top: 56),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.divider, width: 2)),
      ),
      child: ResponsiveSplit(
        first: const Align(
          alignment: Alignment.topLeft,
          child: Reveal(child: SectionTitle('Sobre mim')),
        ),
        second: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Reveal(
              child: Text(
                'Minha trajetória combina Desenvolvimento Mobile, Web e UX Design, permitindo construir soluções com foco em usabilidade, performance e escalabilidade.',
                style: paragraph,
              ),
            ),
            const SizedBox(height: 16),
            Reveal(
              child: Text(
                'Atualmente, atuo no desenvolvimento de sistemas e produtos digitais utilizando Flutter, React e Java. Também desenvolvo pesquisa acadêmica em Ciência da Computação e atuo como Presidente do Licode (Ladies in Code), liderando iniciativas de comunidade, eventos e mentoria.',
                style: paragraph,
              ),
            ),
            const SizedBox(height: 16),
            Reveal(
              child: Text(
                'Meu objetivo é evoluir como Software Engineer, contribuindo para a construção de produtos inovadores, escaláveis e centrados no usuário.',
                style: paragraph.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.purple,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final (i, interest) in _interests.indexed)
                  Reveal(
                    index: i,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border, width: 2),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        interest,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
