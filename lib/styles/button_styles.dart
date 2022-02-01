import 'package:flutter/material.dart';
import 'package:pro_cris_flutter/utils/base_size.dart';

class ButtonStyles {
  ButtonStyles({
    required this.fontSize,
    required this.height,
  });

  double fontSize;
  double height;

  static final Map<BaseSize, ButtonStyles> _styles = {
    BaseSize.sm: ButtonStyles(
      fontSize: 12,
      height: 34,
    ),
    BaseSize.md: ButtonStyles(
      fontSize: 14,
      height: 40,
    ),
    BaseSize.lg: ButtonStyles(
      fontSize: 16,
      height: 45,
    ),
  };

  static getStyles(BaseSize str) {
    return _styles[str]!;
  }
}
