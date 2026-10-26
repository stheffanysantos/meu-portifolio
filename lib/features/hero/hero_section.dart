import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_colors.dart';
import '../../core/widgets/pill_button.dart';
import '../../core/widgets/responsive_split.dart';
import 'widgets/floating.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.onProjects,
    required this.onContact,
  });

  final VoidCallback onProjects;
  final VoidCallback onContact;

  @override
  Widget build(BuildContext context) {
    final titleSize = (MediaQuery.sizeOf(context).width * .06).clamp(
      40.0,
      68.0,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 72),
      child: ResponsiveSplit(
        first: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 520),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              clipBehavior: Clip.antiAlias,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: AppColors.pale,
                borderRadius: BorderRadius.circular(48),
              ),
              child: Floating(
                child: FractionallySizedBox(
                  heightFactor: .92,
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.contain,
                    errorBuilder: (_, _, _) => const SizedBox.shrink(),
                  ),
                ),
              ),
            ),
          ),
        ),
        second: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stheffany\nSantos',
              style: GoogleFonts.poppins(
                fontSize: titleSize,
                fontWeight: FontWeight.w800,
                height: .98,
                letterSpacing: -titleSize * .035,
              ),
            ),
            const SizedBox(height: 24),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 380),
              child: Text(
                'Sou Desenvolvedora de Software apaixonada por criar produtos digitais que unem tecnologia, experiência do usuário e impacto para o negócio.',
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  height: 1.5,
                  color: AppColors.body,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                PillButton(
                  label: 'Ver projetos',
                  onTap: onProjects,
                  background: AppColors.blue,
                  hoverBackground: AppColors.blueDark,
                  foreground: Colors.white,
                ),
                PillButton(
                  label: 'Contato',
                  onTap: onContact,
                  background: Colors.transparent,
                  hoverBackground: AppColors.pale,
                  foreground: AppColors.navy,
                  borderColor: AppColors.navy,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
