import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spoticlone/ui/shared/view/loadingScreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(fontFamily: 'Overpass'),
        initialRoute: '/',
        routes: {'/': (context) => loadingScreen()});
  }
}
