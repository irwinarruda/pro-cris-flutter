// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'package:pro_cris_flutter/styles/pro_cris_colors.dart';
import 'package:pro_cris_flutter/utils/base_size.dart';

class Link extends StatelessWidget {
  const Link({
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
  }) : super(key: key);

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
            fontSize: 16,
            color: ProCrisColors.gold[600],
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.underline,
          ),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 0,
            ),
          ),
          overlayColor: MaterialStateProperty.all(
            ProCrisColors.gray.withOpacity(0.1),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
