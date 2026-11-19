import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/i18n/app_language.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/responsive_split.dart';
import '../../core/widgets/reveal.dart';
import '../../core/widgets/section_title.dart';

const _interests = <(String, String)>[
  ('Desenvolvimento Mobile', 'Mobile Development'),
  ('Java', 'Java'),
  ('Offline-first', 'Offline-first'),
  ('SLMs', 'SLMs'),
  ('Machine Learning', 'Machine Learning'),
  ('Visão Computacional', 'Computer Vision'),
  ('Arquitetura de Aplicações', 'Application Architecture'),
  ('Testes automatizados', 'Automated Testing'),
];

const _techGroups = <(String, String, List<String>)>[
  (
    'Mobile',
    'Mobile',
    ['Flutter', 'Dart', 'Riverpod', 'Provider', 'GetX', 'Offline-first'],
  ),
  ('Java', 'Java', ['Java 8', 'JSP', 'APIs']),
  ('Arquitetura', 'Architecture', ['Clean Architecture', 'MVVM', 'MVC']),
  (
    'Bancos de dados',
    'Databases',
    ['PostgreSQL', 'MySQL', 'SQLite (Drift)', 'Firebase', 'SQL'],
  ),
  (
    'Testes',
    'Testing',
    ['flutter_test', 'mocktail', 'xUnit', 'Jest', 'Vitest'],
  ),
  (
    'Web e backend',
    'Web and backend',
    ['TypeScript', 'React', 'Vue.js', 'Node.js', 'Express.js'],
  ),
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
                      'Sou desenvolvedora de software e trabalho principalmente com Flutter e Java. No trabalho, atuo com sistemas legados em Java 8, JSP e com apps mobile em Flutter, online e offline-first. Tenho projetos com modelos de linguagem e SLMs, como o TeoFinance, em que o Qwen3 1.7B roda no próprio celular.',
                      'I am a software developer and I work mainly with Flutter and Java. At work, I handle legacy systems in Java 8, JSP and mobile apps in Flutter, both online and offline-first. I have projects with language models and SLMs, such as TeoFinance, where Qwen3 1.7B runs on the phone itself.',
                    ),
                    style: paragraph,
                  ),
                ),
                const SizedBox(height: 16),
                Reveal(
                  child: Text(
                    context.tr(
                      'Na pesquisa acadêmica, trabalhei com inteligência artificial, visão computacional, OCR, dispositivos móveis, IHC, UX e programação em blocos. Sou autora de quatro artigos científicos, com trabalhos apresentados em congressos nacionais e internacionais. Curso Ciência da Computação na UNIT e sou presidente do Licode (Ladies in Code).',
                      'In the field of academic research, I have carried out work involving Artificial Intelligence, computer vision, OCR, mobile devices, HCI, UX and block-based programming. I have authored four scientific articles, with work presented at national and international conferences. I study Computer Science at UNIT and I am the President of Licode (Ladies in Code).',
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
