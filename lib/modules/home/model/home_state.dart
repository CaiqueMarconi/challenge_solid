import 'package:challenge_solid/core/design/colors/color_manager.dart';
import 'package:flutter/material.dart';

/// class manegement variables
class HomeState {
  /// variable that will undergo change
  final Color generatedColor;

  /// constructor to initialize the generated color
  HomeState({required this.generatedColor});

  /// static method that initialize the variables
  factory HomeState.init() => HomeState(generatedColor: ColorManager.initColor);

  /// method to create a copy of the state to class
  HomeState copyWith({Color? generatedColor}) {
    return HomeState(generatedColor: generatedColor ?? this.generatedColor);
  }
}
