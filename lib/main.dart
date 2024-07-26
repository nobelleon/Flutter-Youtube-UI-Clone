import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/background_decoration.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';
import 'package:youtube_ui/src/utils/theme/theme.dart';

import 'src/screens/beranda.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(
          duration: const Duration(milliseconds: 18000),
          backgroundColor: Colors.white,
          showStatusBar: true,
          backgroundImageDecoration: const BackgroundImageDecoration(
            image: AssetImage('assets/img/Youtube intro.gif'),
            fit: BoxFit.fill,
          ),
          done: Done(
            const MyApp(),
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube UI',
      debugShowCheckedModeBanner: false,
      theme: ThreadsAppTheme.darkTheme,
      darkTheme: ThreadsAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const Beranda(),
    );
  }
}
