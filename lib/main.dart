import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeLight().theme(),
      home: const Home(),
    );
  }
}
