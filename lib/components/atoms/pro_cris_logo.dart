import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProCrisLogo extends StatelessWidget {
  final String svgPath = 'assets/logos/pro-cris-logo.svg';

  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final EdgeInsetsGeometry? margin;
  final BoxConstraints? constraints;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final double? width;
  final double? height;
  final Clip clipBehavior;
  final Key? key;

  const ProCrisLogo({
    this.key,
    this.alignment,
    this.padding,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: padding,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      margin: margin,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      width: width,
      height: height,
      key: key,
      child: SvgPicture.asset(
        svgPath,
        width: width,
        semanticsLabel: 'Pro Cris App',
      ),
    );
  }
}
