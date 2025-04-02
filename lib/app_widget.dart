import 'package:challenge_solid/core/design/colors/color_manager.dart';
import 'package:challenge_solid/modules/splash_screen/view/splash_screen_view.dart';
import 'package:flutter/material.dart';

/// the main widget
class AppWidget extends StatelessWidget {
  /// the constructor class
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge Solid',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: ColorManager.initColor,
      ),
      home: const SplashScreenView(),
    );
  }
}
