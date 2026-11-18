import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppLang { pt, en }

class LanguageController extends ChangeNotifier {
  LanguageController(this._lang, [this._prefs]);

  static const _key = 'lang';

  final SharedPreferences? _prefs;
  AppLang _lang;

  AppLang get lang => _lang;

  /// Usa o idioma salvo; na primeira visita, o idioma do navegador.
  static Future<LanguageController> load() async {
    SharedPreferences? prefs;
    try {
      prefs = await SharedPreferences.getInstance();
    } catch (_) {}
    final lang = switch (prefs?.getString(_key)) {
      'pt' => AppLang.pt,
      'en' => AppLang.en,
      _ =>
        PlatformDispatcher.instance.locale.languageCode == 'pt'
            ? AppLang.pt
            : AppLang.en,
    };
    return LanguageController(lang, prefs);
  }

  void select(AppLang lang) {
    if (lang == _lang) return;
    _lang = lang;
    _prefs?.setString(_key, lang.name);
    notifyListeners();
  }
}

class AppLanguage extends InheritedNotifier<LanguageController> {
  const AppLanguage({
    super.key,
    required LanguageController controller,
    required super.child,
  }) : super(notifier: controller);

  static AppLang of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppLanguage>()!.notifier!.lang;

  static LanguageController controllerOf(BuildContext context) =>
      context.getInheritedWidgetOfExactType<AppLanguage>()!.notifier!;
}

extension LanguageContext on BuildContext {
  AppLang get lang => AppLanguage.of(this);

  /// Devolve o texto do idioma atual e reconstrói o widget quando ele muda.
  String tr(String pt, String en) => lang == AppLang.pt ? pt : en;
}
