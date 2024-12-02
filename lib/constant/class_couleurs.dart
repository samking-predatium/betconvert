import 'package:flutter/material.dart';

class ColorPalette {
  // Couleurs complémentaires : bleu marine et corail
  static const Color primaryColor = Color(0xFF1A3C6C);    // Bleu marine profond
  static const Color secondaryColor = Color(0xFFFFA07A);  // Corail clair

  // Méthode pour obtenir un dégradé entre les deux couleurs
  static LinearGradient getGradient({
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
    double opacity = 1.0,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [
        primaryColor.withOpacity(opacity),
        secondaryColor.withOpacity(opacity)
      ],
    );
  }
}