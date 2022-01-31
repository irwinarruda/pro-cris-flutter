import 'package:flutter/material.dart';
import 'package:pro_cris_flutter/components/atoms/pro_cris_logo.dart';

class ProCrisBanner extends StatefulWidget implements PreferredSizeWidget {
  const ProCrisBanner({
    Key? key,
    this.preferredSize = const Size.fromHeight(130),
  }) : super(key: key);

  @override
  final Size preferredSize;

  @override
  State createState() {
    return _ProCrisBannerState();
  }
}

class _ProCrisBannerState extends State<ProCrisBanner> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 130,
      title: ProCrisLogo(
        width: 235,
      ),
      centerTitle: true,
    );
  }
}
