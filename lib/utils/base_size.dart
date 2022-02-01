import 'package:flutter/material.dart';

enum BaseSize {
  lg,
  md,
  sm,
}

extension BasSizeExtension on BaseSize {
  getColor() {
    switch (this) {
      case BaseSize.lg:
        return Colors.black;
      case BaseSize.md:
        return Colors.black;
      case BaseSize.sm:
        return Colors.black;
    }
  }
}
