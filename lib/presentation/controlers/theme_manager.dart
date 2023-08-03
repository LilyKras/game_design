import 'package:diella/data/enums/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeManager extends StateNotifier<AppTheme> {
  ThemeManager() : super(AppTheme.light);

  void toggleTheme() {
    state == AppTheme.light ? state = AppTheme.dark : state = AppTheme.light;
  }
}

final themeManager = StateNotifierProvider((ref) {
  return ThemeManager();
});
