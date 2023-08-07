import 'package:diella/domain/helpers/enums/theme.dart';
import 'package:diella/domain/helpers/settings.dart';
import 'package:diella/presentation/menu/controlers/settings/slider_controller.dart';
import 'package:diella/firebase_options.dart';
import 'package:diella/navigation/navigator.dart';
import 'package:diella/presentation/menu/theme/dark_theme.dart';
import 'package:diella/presentation/menu/theme/light_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> _initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

SharedPreferences? prefs;

Future<void> _initLocalStorage() async {
  prefs = await SharedPreferences.getInstance();
}

Future<void> main() async {
  await _initFirebase();
  await _initLocalStorage();
  FlameAudio.bgm.initialize();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    (prefs!.getBool('volume') ?? false)
        ? FlameAudio.bgm.play('game/music/sad.mp3', volume: 1)
        : FlameAudio.bgm.stop();
    return Consumer(
      builder: (context, ref, child) => MaterialApp.router(
        title: 'Alliance Love',
        theme: createLightTheme(),
        darkTheme: createDarkTheme(),
        themeMode: theme[ref.watch(themeController) as int][0] == AppTheme.dark
            ? ThemeMode.dark
            : ThemeMode.light,
        routerConfig: router,
      ),
    );
  }
}
