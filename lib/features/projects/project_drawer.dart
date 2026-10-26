import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_colors.dart';
import '../../core/utils/link_opener.dart';
import '../../core/widgets/pill_button.dart';
import 'project.dart';
import 'widgets/newsletter_header.dart';
import 'widgets/newsletter_section.dart';

const _drawerMaxWidth = 640.0;

Future<void> showProjectDrawer(
  BuildContext context,
  Project project,
  int number,
) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Fechar',
    barrierColor: AppColors.navy.withValues(alpha: .5),
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (_, _, _) => _ProjectDrawer(project: project, number: number),
    transitionBuilder: (_, animation, _, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: const Cubic(.2, .8, .2, 1),
        reverseCurve: Curves.easeIn,
      );
      return SlideTransition(
        position: Tween(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(curved),
        child: child,
      );
    },
  );
}

class _ProjectDrawer extends StatelessWidget {
  const _ProjectDrawer({required this.project, required this.number});

  final Project project;
  final int number;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final width = math.min(_drawerMaxWidth, screenWidth);
    final rounded = screenWidth > _drawerMaxWidth;

    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: width,
        height: double.infinity,
        child: Material(
          color: AppColors.background,
          clipBehavior: Clip.antiAlias,
          borderRadius: rounded
              ? const BorderRadius.horizontal(left: Radius.circular(16))
              : BorderRadius.zero,
          child: CallbackShortcuts(
            bindings: {
              const SingleActivator(LogicalKeyboardKey.escape): () =>
                  Navigator.pop(context),
            },
            child: Focus(
              autofocus: true,
              child: _DrawerBody(project: project, number: number),
            ),
          ),
        ),
      ),
    );
  }
}

class _DrawerBody extends StatelessWidget {
  const _DrawerBody({required this.project, required this.number});

  final Project project;
  final int number;

  static const _gutter = 28.0;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NewsletterHeader(
              project: project,
              number: number,
              onClose: () => Navigator.pop(context),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: _gutter),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (final (i, section) in project.sections.indexed)
                    NewsletterSection(
                      number: i + 1,
                      section: section,
                      accent: project.color,
                      accentInk: project.ink,
                    ),
                  _Footer(project: project),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.fromLTRB(0, 28, 0, 48),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.divider, width: 2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              if (project.url.isNotEmpty)
                PillButton(
                  label: project.isArticle ? 'Ler artigo ↗' : 'Abrir projeto ↗',
                  onTap: () => openLink(context, project.url),
                  background: AppColors.blue,
                  hoverBackground: AppColors.blueDark,
                  foreground: Colors.white,
                ),
              if (project.repoUrl.isNotEmpty)
                PillButton(
                  label: 'Repositório ↗',
                  onTap: () => openLink(context, project.repoUrl),
                  background: AppColors.navy,
                  foreground: Colors.white,
                ),
            ],
          ),
          const SizedBox(height: 28),
          Center(
            child: Text(
              '— Fim da edição —',
              style: GoogleFonts.poppins(
                color: AppColors.muted,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
