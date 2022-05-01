import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upcomingg/views/splashscreen.dart';
import 'package:upcomingg/views/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: UpcominggMaterialApp(),
    );
  }
}

class UpcominggMaterialApp extends StatelessWidget {
  const UpcominggMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        title: 'Upcomingg',
        theme: theme.getTheme(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
