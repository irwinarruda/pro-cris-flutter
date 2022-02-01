// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'package:pro_cris_flutter/styles/pro_cris_colors.dart';
import 'package:pro_cris_flutter/styles/button_styles.dart';
import 'package:pro_cris_flutter/utils/base_size.dart';

class Button extends StatelessWidget {
  Button({
    Key? key,
    required this.onPressed,
    this.size = BaseSize.md,
    this.text = '',
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
  }) : super(key: key) {
    fieldStyles = ButtonStyles.getStyles(size!);
  }

  late ButtonStyles fieldStyles;

  final BaseSize? size;
  final String? text;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final ValueChanged<bool>? onHover;
  final ValueChanged<bool>? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fieldStyles.height,
      child: TextButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: Text(
          '$text',
          style: TextStyle(
            fontSize: fieldStyles.fontSize,
            color: ProCrisColors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            ProCrisColors.purple,
          ),
          overlayColor: MaterialStateProperty.all(
            ProCrisColors.white.withOpacity(0.15),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(
                width: 1,
                color: ProCrisColors.gold[300]!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
