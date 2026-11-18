import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/i18n/app_language.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/responsive_split.dart';
import '../../core/widgets/reveal.dart';
import '../../core/widgets/section_title.dart';

const _interests = <(String, String)>[
  ('Desenvolvimento Mobile', 'Mobile Development'),
  ('Engenharia de Software', 'Software Engineering'),
  ('Arquitetura de Aplicações', 'Application Architecture'),
  ('User Experience', 'User Experience'),
  ('Design Systems', 'Design Systems'),
  ('Acessibilidade', 'Accessibility'),
  ('Inteligência Artificial', 'Artificial Intelligence'),
];

const _techGroups = <(String, String, List<String>)>[
  ('Linguagens', 'Languages', ['TypeScript', 'Java', 'Dart', 'SQL']),
  (
    'Frontend e estado',
    'Frontend and state',
    [
      'Flutter',
      'Riverpod',
      'Provider',
      'GetX',
      'React',
      'Context API',
      'Zustand',
      'Vue.js',
      'Pinia',
    ],
  ),
  ('Backend', 'Backend', ['Node.js', 'Express.js', 'Java']),
  (
    'Bancos de dados',
    'Databases',
    ['PostgreSQL', 'MySQL', 'Firebase', 'Supabase'],
  ),
  (
    'Testes',
    'Testing',
    [
      'Jest',
      'Vitest',
      'React Testing Library',
      'xUnit',
      'flutter_test',
      'mocktail',
    ],
  ),
  ('Arquitetura', 'Architecture', ['Clean Architecture', 'MVVM', 'FSD', 'MVC']),
  ('Ferramentas', 'Tools', ['Git', 'GitHub', 'CI/CD', 'Figma']),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Reveal(child: SectionTitle(context.tr('Sobre mim', 'About me'))),
          const SizedBox(height: 32),
          ResponsiveSplit(
            crossAxisAlignment: CrossAxisAlignment.start,
            first: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Reveal(
                  child: Text(
                    context.tr(
                      'Minha trajetória combina Desenvolvimento Mobile, Web e UX Design, permitindo construir soluções com foco em usabilidade, performance e escalabilidade.',
                      'My path combines Mobile Development, Web and UX Design, which lets me build solutions focused on usability, performance and scalability.',
                    ),
                    style: paragraph,
                  ),
                ),
                const SizedBox(height: 16),
                Reveal(
                  child: Text(
                    context.tr(
                      'Atualmente, atuo no desenvolvimento de sistemas e produtos digitais utilizando Flutter, React e Java/JSP. Também desenvolvo pesquisa acadêmica em Ciência da Computação e atuo como Presidente do Licode (Ladies in Code), liderando iniciativas de comunidade, eventos e mentoria.',
                      'Currently, I develop systems and digital products with Flutter, React and Java/JSP. I also do academic research in Computer Science and serve as President of Licode (Ladies in Code), leading community initiatives, events and mentoring.',
                    ),
                    style: paragraph,
                  ),
                ),
                const SizedBox(height: 24),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final (i, (interestPt, interestEn))
                        in _interests.indexed)
                      Reveal(
                        index: i,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.border,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: Text(
                            context.tr(interestPt, interestEn),
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
            second: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Reveal(
                  child: Text(
                    context.tr('Tecnologias', 'Technologies'),
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                for (final (i, (groupPt, groupEn, techs))
                    in _techGroups.indexed)
                  Reveal(
                    index: i,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.tr(groupPt, groupEn),
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.purple,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              for (final tech in techs)
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.pale,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                  child: Text(
                                    tech,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.navy,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
