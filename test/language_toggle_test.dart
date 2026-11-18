import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio_stheffany_santos/core/i18n/app_language.dart';
import 'package:portifolio_stheffany_santos/features/projects/projects_data.dart';
import 'package:portifolio_stheffany_santos/features/home/widgets/nav_bar.dart';
import 'package:portifolio_stheffany_santos/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('seletor troca o idioma do site e guarda a escolha', (t) async {
    t.view.physicalSize = const Size(1200, 900);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);

    final controller = LanguageController(AppLang.pt);
    await t.pumpWidget(PortfolioApp(language: controller));
    await t.pump(const Duration(seconds: 1));

    expect(find.text('Ver projetos'), findsOneWidget);
    expect(find.text('Sobre mim'), findsWidgets);

    await t.tap(find.text('EN'));
    await t.pump(const Duration(seconds: 1));

    expect(controller.lang, AppLang.en);
    expect(find.text('View projects'), findsOneWidget);
    expect(find.text('Ver projetos'), findsNothing);
    expect(find.text('Technologies'), findsWidgets);
  });

  test('PT e EN têm os mesmos projetos, na mesma ordem', () {
    final pt = projectsFor(AppLang.pt);
    final en = projectsFor(AppLang.en);
    expect(en.length, pt.length);
    for (var i = 0; i < pt.length; i++) {
      expect(en[i].initials, pt[i].initials);
      expect(en[i].url, pt[i].url);
      expect(en[i].sections.length, pt[i].sections.length);
      expect(en[i].isArticle, pt[i].isArticle);
      expect(projectFiltersFor(AppLang.en).contains(en[i].category), isTrue);
    }
  });

  for (final width in [320.0, 390.0, 900.0]) {
    testWidgets('barra de navegação cabe em $width px', (t) async {
      t.view.physicalSize = Size(width, 700);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);

      await t.pumpWidget(
        AppLanguage(
          controller: LanguageController(AppLang.pt),
          child: MaterialApp(
            theme: ThemeData(fontFamily: 'Roboto'),
            home: Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: NavBar(
                  onProjects: () {},
                  onAbout: () {},
                  onContact: () {},
                ),
              ),
            ),
          ),
        ),
      );
      await t.pump();
      expect(find.text('PT'), findsOneWidget);
    });
  }
}
