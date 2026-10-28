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

const _techGroups = <(String, List<String>)>[
  ('Linguagens', ['TypeScript', 'Java', 'Dart', 'SQL']),
  (
    'Frontend e estado',
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
  ('Backend', ['Node.js', 'Express.js', 'Java']),
  ('Bancos de dados', ['PostgreSQL', 'MySQL', 'Firebase', 'Supabase']),
  (
    'Testes',
    [
      'Jest',
      'Vitest',
      'React Testing Library',
      'xUnit',
      'flutter_test',
      'mocktail',
    ],
  ),
  ('Arquitetura', ['Clean Architecture', 'MVVM', 'FSD', 'MVC']),
  ('Ferramentas', ['Git', 'GitHub', 'CI/CD', 'Figma']),
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
        second: _ScrollOnWide(
          child: Column(
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
                  'Atualmente, atuo no desenvolvimento de sistemas e produtos digitais utilizando Flutter, React e Java/JSP. Também desenvolvo pesquisa acadêmica em Ciência da Computação e atuo como Presidente do Licode (Ladies in Code), liderando iniciativas de comunidade, eventos e mentoria.',
                  style: paragraph,
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
              const SizedBox(height: 40),
              Reveal(
                child: Text(
                  'Tecnologias',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              for (final (i, (group, techs)) in _techGroups.indexed)
                Reveal(
                  index: i,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          group,
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
      ),
    );
  }
}

class _ScrollOnWide extends StatefulWidget {
  const _ScrollOnWide({required this.child});

  final Widget child;

  @override
  State<_ScrollOnWide> createState() => _ScrollOnWideState();
}

class _ScrollOnWideState extends State<_ScrollOnWide> {
  final _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (MediaQuery.sizeOf(context).width < ResponsiveSplit.breakpoint) {
          return widget.child;
        }
        return ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 520),
          child: Scrollbar(
            controller: _controller,
            thumbVisibility: true,
            child: SingleChildScrollView(
              controller: _controller,
              padding: const EdgeInsets.only(right: 16),
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
