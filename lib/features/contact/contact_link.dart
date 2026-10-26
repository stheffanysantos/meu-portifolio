import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class ContactLink {
  const ContactLink({
    required this.label,
    required this.background,
    required this.foreground,
    this.url = '',
  });

  final String label;
  final Color background;
  final Color foreground;
  final String url;
}

const contactLinks = <ContactLink>[
  ContactLink(
    label: 'LinkedIn',
    url: 'https://www.linkedin.com/in/stheffany-santos/',
    background: AppColors.blue,
    foreground: Colors.white,
  ),
  ContactLink(
    label: 'GitHub',
    url: 'https://github.com/stheffanysantos?tab=repositories',
    background: AppColors.navy,
    foreground: Colors.white,
  ),
  ContactLink(
    label: 'E-mail',
    url: 'mailto:sthercode@gmail.com',
    background: AppColors.purple,
    foreground: Colors.white,
  ),
  ContactLink(
    label: 'Currículo em PDF',
    url: 'curriculo.pdf',
    background: AppColors.pale,
    foreground: AppColors.navy,
  ),
];
