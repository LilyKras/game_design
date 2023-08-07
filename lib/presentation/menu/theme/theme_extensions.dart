import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color bottomBackGroundColor;
  final Color borderColor;
  final Color setingsBackgroundColor;
  final Color shopNameColor;

  const ThemeColors({
    required this.bottomBackGroundColor,
    required this.borderColor,
    required this.setingsBackgroundColor,
    required this.shopNameColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? bottomBackGroundColor,
    Color? borderColor,
    Color? setingsBackgroundColor,
    Color? shopNameColor,
  }) {
    return ThemeColors(
      bottomBackGroundColor:
          bottomBackGroundColor ?? this.bottomBackGroundColor,
      borderColor: borderColor ?? this.borderColor,
      setingsBackgroundColor:
          setingsBackgroundColor ?? this.setingsBackgroundColor,
      shopNameColor: shopNameColor ?? this.shopNameColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      bottomBackGroundColor:
          Color.lerp(bottomBackGroundColor, other.bottomBackGroundColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      setingsBackgroundColor:
          Color.lerp(setingsBackgroundColor, other.setingsBackgroundColor, t)!,
      shopNameColor: Color.lerp(shopNameColor, other.shopNameColor, t)!,
    );
  }

  static get light => const ThemeColors(
        bottomBackGroundColor: Color.fromRGBO(181, 122, 130, 1),
        borderColor: Color.fromRGBO(204, 122, 133, 1),
        setingsBackgroundColor: Color.fromRGBO(197, 133, 129, 0.41),
        shopNameColor: Color.fromRGBO(245, 184, 184, 1),
      );

  static get dark => const ThemeColors(
        bottomBackGroundColor: Color.fromRGBO(52, 5, 45, 1),
        borderColor: Color.fromRGBO(189, 42, 167, 1),
        setingsBackgroundColor: Color.fromRGBO(51, 33, 161, 0.41),
        shopNameColor: Color.fromRGBO(118, 12, 101, 1),
      );
}

class ThemeGradients extends ThemeExtension<ThemeGradients> {
  final Gradient backGroundGradient;
  final Gradient statsGradient;
  final Gradient buttonGradient;
  final Gradient shopItemGradient;
  final Gradient storyPreviewGradient;

  const ThemeGradients({
    required this.backGroundGradient,
    required this.statsGradient,
    required this.buttonGradient,
    required this.shopItemGradient,
    required this.storyPreviewGradient,
  });

  @override
  ThemeExtension<ThemeGradients> copyWith({
    Gradient? backGroundGradient,
    Gradient? statsGradient,
    Gradient? buttonGradient,
    Gradient? shopItemGradient,
    Gradient? storyPreviewGradient,
  }) {
    return ThemeGradients(
      backGroundGradient: backGroundGradient ?? this.backGroundGradient,
      statsGradient: statsGradient ?? this.statsGradient,
      buttonGradient: buttonGradient ?? this.buttonGradient,
      shopItemGradient: shopItemGradient ?? this.shopItemGradient,
      storyPreviewGradient: storyPreviewGradient ?? this.storyPreviewGradient,
    );
  }

  @override
  ThemeExtension<ThemeGradients> lerp(
    ThemeExtension<ThemeGradients>? other,
    double t,
  ) {
    if (other is! ThemeGradients) {
      return this;
    }

    return ThemeGradients(
      backGroundGradient:
          Gradient.lerp(backGroundGradient, other.backGroundGradient, t)!,
      statsGradient: Gradient.lerp(statsGradient, other.statsGradient, t)!,
      buttonGradient: Gradient.lerp(buttonGradient, other.buttonGradient, t)!,
      shopItemGradient:
          Gradient.lerp(shopItemGradient, other.shopItemGradient, t)!,
      storyPreviewGradient:
          Gradient.lerp(storyPreviewGradient, other.storyPreviewGradient, t)!,
    );
  }

  static get light => const ThemeGradients(
        backGroundGradient: LinearGradient(
          colors: [Color(0xFFFFDDC7), Color(0xFFD58A94)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        statsGradient: LinearGradient(
          colors: [
            Color.fromRGBO(181, 122, 130, 1),
            Color.fromRGBO(243, 144, 157, 0.81)
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        buttonGradient: LinearGradient(
          colors: [
            Color.fromRGBO(181, 122, 130, 1),
            Color.fromRGBO(243, 144, 157, 0.81)
          ],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
        shopItemGradient: LinearGradient(
          colors: [
            Color.fromRGBO(181, 122, 130, 0.4),
            Color.fromRGBO(243, 144, 157, 0.32)
          ],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
        storyPreviewGradient: LinearGradient(
          colors: [
            Color.fromRGBO(181, 122, 130, 0.4),
            Color.fromRGBO(243, 144, 157, 0.32)
          ],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
      );

  static get dark => const ThemeGradients(
        backGroundGradient: LinearGradient(
          colors: [Color(0xFF100968), Color(0xFF69175C)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        statsGradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 5, 45, 1),
            Color.fromRGBO(210, 36, 184, 0.61)
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        buttonGradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 5, 45, 1),
            Color.fromRGBO(210, 36, 184, 0.61)
          ],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
        shopItemGradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 5, 45, 0.4),
            Color.fromRGBO(210, 36, 184, 0.24)
          ],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
        storyPreviewGradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 5, 45, 0.4),
            Color.fromRGBO(210, 36, 184, 0.24)
          ],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
      );
}
