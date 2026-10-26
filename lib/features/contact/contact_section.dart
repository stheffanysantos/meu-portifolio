import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/utils/link_opener.dart';
import '../../core/widgets/pill_button.dart';
import '../../core/widgets/reveal.dart';
import '../../core/widgets/section_title.dart';
import 'contact_link.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 56),
      padding: const EdgeInsets.only(top: 56),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.divider, width: 2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Reveal(child: SectionTitle('Contato')),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              for (final (i, c) in contactLinks.indexed)
                Reveal(
                  index: i,
                  child: PillButton(
                    label: '${c.label} ↗',
                    onTap: () => openLink(context, c.url),
                    background: c.background,
                    foreground: c.foreground,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
