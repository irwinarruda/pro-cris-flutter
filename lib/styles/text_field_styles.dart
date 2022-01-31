import 'package:flutter/material.dart';
import 'package:pro_cris_flutter/utils/base_size.dart';

class TextFieldStyles {
  TextFieldStyles({
    required this.labelFontSize,
    required this.fontSize,
    required this.height,
    required this.padding,
  });

  double labelFontSize;
  double fontSize;
  double height;
  EdgeInsets padding;

  static final Map<BaseSize, TextFieldStyles> _textFieldStyles = {
    BaseSize.sm: TextFieldStyles(
      labelFontSize: 14,
      fontSize: 14,
      height: 36,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
    ),
    BaseSize.md: TextFieldStyles(
      labelFontSize: 16,
      fontSize: 16,
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
    ),
    BaseSize.lg: TextFieldStyles(
      labelFontSize: 18,
      fontSize: 16,
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
    ),
  };

  static TextFieldStyles getTextFieldProps(BaseSize str) {
    return _textFieldStyles[str]!;
  }
}
