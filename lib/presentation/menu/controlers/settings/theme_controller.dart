import 'package:diella/domain/helpers/enums/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeController extends StateNotifier<AppTheme> {
  ThemeController() : super(AppTheme.light);

  void toggleTheme() {
    state == AppTheme.light ? state = AppTheme.dark : state = AppTheme.light;
  }
}

final themeController = StateNotifierProvider((ref) {
  return ThemeController();
});
