import 'package:challenge_solid/modules/home/model/home_model.dart';
import 'package:flutter/material.dart';

/// The HomeView widget class
class HomeView extends StatefulWidget {
  /// Constructor for HomeView
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeModel = HomeModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: homeModel.generateColor,
        child: ListenableBuilder(
          listenable: homeModel,
          builder: (_, __) {
            return ColoredBox(
              color: homeModel.state.generatedColor,
              child: const Center(
                child: Text(
                  'Hello there',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
