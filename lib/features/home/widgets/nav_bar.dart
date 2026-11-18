import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/i18n/app_language.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/language_toggle.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.onProjects,
    required this.onAbout,
    required this.onContact,
  });

  final VoidCallback onProjects;
  final VoidCallback onAbout;
  final VoidCallback onContact;

  static const _narrow = 560.0;

  @override
  Widget build(BuildContext context) {
    final items = [
      _NavItem(context.tr('Projetos', 'Projects'), onProjects),
      _NavItem(context.tr('Sobre', 'About'), onAbout),
      _NavItem(context.tr('Contato', 'Contact'), onContact),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < _narrow) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Expanded(child: _Name()),
                    LanguageToggle(),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(children: items),
              ],
            );
          }
          return Row(
            children: [
              const Expanded(child: _Name()),
              ...items,
              const SizedBox(width: 6),
              const LanguageToggle(),
            ],
          );
        },
      ),
    );
  }
}

class _Name extends StatelessWidget {
  const _Name();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Stheffany Santos',
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w800, fontSize: 17),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem(this.label, this.onTap);

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        foregroundColor: const WidgetStatePropertyAll(AppColors.navy),
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        ),
        minimumSize: const WidgetStatePropertyAll(Size.zero),
        shape: const WidgetStatePropertyAll(StadiumBorder()),
        backgroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.hovered)
              ? AppColors.pale
              : Colors.transparent,
        ),
        textStyle: WidgetStatePropertyAll(
          GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 15),
        ),
      ),
      child: Text(label),
    );
  }
}
