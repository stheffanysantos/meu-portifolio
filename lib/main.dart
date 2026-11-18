import 'package:flutter/material.dart';

import 'core/i18n/app_language.dart';
import 'core/theme/app_theme.dart';
import 'features/home/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final language = await LanguageController.load();
  runApp(PortfolioApp(language: language));
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key, required this.language});

  final LanguageController language;

  @override
  Widget build(BuildContext context) {
    return AppLanguage(
      controller: language,
      child: Builder(
        builder: (context) => MaterialApp(
          onGenerateTitle: (_) => context.tr(
            'Stheffany Santos | Desenvolvedora de Software',
            'Stheffany Santos | Software Developer',
          ),
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          home: const HomePage(),
        ),
      ),
    );
  }
}
