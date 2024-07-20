import 'package:flutter/material.dart';
import 'package:travelapps/ui/pages/bonus_page.dart';
import 'package:travelapps/ui/pages/get_started.dart';
import 'package:travelapps/ui/pages/main_page.dart';
import 'package:travelapps/ui/pages/sign_up.dart';
import 'package:travelapps/ui/pages/splash_page.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      routes: {
        // halaman splash page
        '/home': (context) => SplashPage(),
        // halaman getting started
        '/get-started': (context) => GettingStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
