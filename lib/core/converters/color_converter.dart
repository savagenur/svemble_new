import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ColorConverter implements JsonConverter<Color?, Map<String, dynamic>?> {
  const ColorConverter();

  @override
  Color? fromJson(Map<String, dynamic>? json) {
    // Handle null input
    if (json == null) return null;

    final colorValue = json['color'] as int?;
    if (colorValue != null) {
      return Color(colorValue);
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(Color? color) {
    if (color == null) return null;
    return {'color': color.value};
  }
}
