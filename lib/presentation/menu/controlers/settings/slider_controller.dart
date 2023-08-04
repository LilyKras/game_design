import 'package:diella/domain/helpers/settings.dart';
import 'package:diella/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SettingsSliderController extends StateNotifier<int> {
  SettingsSliderController(super.state, this.length);

  final int length;

  Future<void> nextState() async {
    // state = (state+1 > length)? state+1 - length:state+1;
  }

  Future<void> previousState() async {
    // state = (state-1 < 0)? state-1 + length:state-1;
  }
}

class ThemeController extends SettingsSliderController {
  ThemeController() : super(prefs!.getInt('theme_index') ?? 0, theme.length);

  @override
  Future<void> nextState() async {
    state = (state + 1 >= length) ? state + 1 - length : state + 1;
    await prefs!.setInt('theme_index', state);
  }

  @override
  Future<void> previousState() async {
    state = (state - 1 < 0) ? state - 1 + length : state - 1;
    await prefs!.setInt('theme_index', state);
  }
}

final themeController = StateNotifierProvider((ref) {
  return ThemeController();
});

class LanguageController extends SettingsSliderController {
  LanguageController()
      : super(prefs!.getInt('language_index') ?? 0, language.length);

  @override
  Future<void> nextState() async {
    state = (state + 1 >= length) ? state + 1 - length : state + 1;
    await prefs!.setInt('language_index', state);
  }

  @override
  Future<void> previousState() async {
    state = (state - 1 < 0) ? state - 1 + length : state - 1;
    await prefs!.setInt('language_index', state);
  }
}

final languageController = StateNotifierProvider((ref) {
  return LanguageController();
});
