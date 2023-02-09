import 'package:adamur_haba/pages/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../resources/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'haba app',
      theme: ThemeData(
          appBarTheme:AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle( //<-- SEE HERE
              // Status bar color
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
            ),
          )
      ),
      home: const HomeScreen(),
    );
  }
}

