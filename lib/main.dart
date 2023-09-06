import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/constants/light_theme.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]); //Yatay döndürmeyi kapatır
  setupLocator();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sünnet Rehberi",
      debugShowCheckedModeBanner: false,
      theme: ThemeLight().theme(),
      home: const Home(),
    );
  }
}
