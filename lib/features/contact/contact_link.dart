import 'package:flutter/material.dart';

import '../../core/i18n/app_language.dart';
import '../../core/theme/app_colors.dart';

class ContactLink {
  const ContactLink({
    required this.label,
    required this.labelEn,
    required this.background,
    required this.foreground,
    this.url = '',
    this.urlEn = '',
  });

  final String label;
  final String labelEn;
  final Color background;
  final Color foreground;
  final String url;

  /// Link do idioma inglês; vazio usa o mesmo [url] do português.
  final String urlEn;

  String labelFor(AppLang lang) => lang == AppLang.pt ? label : labelEn;

  String urlFor(AppLang lang) =>
      lang == AppLang.en && urlEn.isNotEmpty ? urlEn : url;
}

const contactLinks = <ContactLink>[
  ContactLink(
    label: 'LinkedIn',
    labelEn: 'LinkedIn',
    url: 'https://www.linkedin.com/in/stheffany-santos/',
    background: AppColors.blue,
    foreground: Colors.white,
  ),
  ContactLink(
    label: 'GitHub',
    labelEn: 'GitHub',
    url: 'https://github.com/stheffanysantos?tab=repositories',
    background: AppColors.navy,
    foreground: Colors.white,
  ),
  ContactLink(
    label: 'E-mail',
    labelEn: 'Email',
    url: 'mailto:sthercode@gmail.com',
    background: AppColors.purple,
    foreground: Colors.white,
  ),
  // Quando existir o PDF em inglês, coloque em web/curriculo-en.pdf, preencha
  // urlEn: 'curriculo-en.pdf' e troque o rótulo para 'Resume (PDF)'.
  ContactLink(
    label: 'Currículo em PDF',
    labelEn: 'Resume (PDF, in Portuguese)',
    url: 'curriculo.pdf',
    background: AppColors.pale,
    foreground: AppColors.navy,
  ),
];
