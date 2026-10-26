import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_colors.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Stheffany Santos',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),
            ),
          ),
          _NavItem('Projetos', onProjects),
          _NavItem('Sobre', onAbout),
          _NavItem('Contato', onContact),
        ],
      ),
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
