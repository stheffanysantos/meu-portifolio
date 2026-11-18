import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../i18n/app_language.dart';
import '../theme/app_colors.dart';

Future<void> openLink(BuildContext context, String url) async {
  if (url.isEmpty) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text(
          context.tr(
            'Link indisponível por enquanto',
            'Link not available yet',
          ),
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.navy,
        duration: Duration(milliseconds: 1800),
        width: 320,
        shape: StadiumBorder(),
      ),
    );
    return;
  }
  await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}
