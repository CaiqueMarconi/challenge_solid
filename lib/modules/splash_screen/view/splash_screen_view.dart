import 'package:challenge_solid/core/design/images/image_manager.dart';
import 'package:challenge_solid/modules/home/view/home_view.dart';
import 'package:flutter/material.dart';

/// The SplashScreenView widget class
class SplashScreenView extends StatefulWidget {
  /// constructor method
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const HomeView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          child: Image.asset(ImageManager.logoSolid),
        ),
      ),
    );
  }
}
