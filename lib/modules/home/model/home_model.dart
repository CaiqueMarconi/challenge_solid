import 'dart:math';

import 'package:challenge_solid/core/design/strings/string_manager.dart';
import 'package:challenge_solid/modules/home/model/home_state.dart';
import 'package:flutter/material.dart';

/// Class that manages the home state
class HomeModel extends ChangeNotifier {
  /// variable that recover the variables
  HomeState state = HomeState.init();

  /// The method that generate a new random number
  final _random = Random();

  /// the method that generate a new color
  void generateColor() {
    final generatedColor = Color.fromRGBO(
      _random.nextInt(StringManager.byteColor),
      _random.nextInt(StringManager.byteColor),
      _random.nextInt(StringManager.byteColor),
      1.0,
    );
    state = state.copyWith(generatedColor: generatedColor);
    notifyListeners();
  }
}
