import 'package:diella/domain/helpers/enums/theme.dart';
import 'package:diella/presentation/menu/screens/controlers/settings/theme_controller.dart';
import 'package:diella/firebase_options.dart';
import 'package:diella/navigation/navigator.dart';
import 'package:diella/presentation/menu/screens/controlers/settings/switch_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> _init() async {
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

void main() {
  _init();
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
    return Consumer(
      builder: (context, ref, child) {
        (ref.read(volumeController) as bool)
            ? FlameAudio.bgm.play('game/music/sad.mp3', volume: 1)
            : FlameAudio.bgm.stop();
        return MaterialApp.router(
          title: 'Alliance Love',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xFFD58A94)),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xFFD58A94)),
            useMaterial3: false,
          ),
          themeMode: ref.watch(themeController) as AppTheme == AppTheme.dark
              ? ThemeMode.dark
              : ThemeMode.light,
          routerConfig: router,
        );
      },
    );
  }
}
