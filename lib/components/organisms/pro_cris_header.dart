import 'package:flutter/material.dart';
import 'package:pro_cris_flutter/components/atoms/pro_cris_logo.dart';

enum MenuOptionsEnum { logout }

class ProCrisHeader extends StatefulWidget implements PreferredSizeWidget {
  const ProCrisHeader({
    Key? key,
    this.preferredSize = const Size.fromHeight(64),
  }) : super(key: key);

  @override
  final Size preferredSize;

  @override
  State createState() {
    return _ProCrisHeaderState();
  }
}

class _ProCrisHeaderState extends State<ProCrisHeader> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 64,
      actions: [
        PopupMenuButton<MenuOptionsEnum>(
          icon: Icon(Icons.more_vert_outlined),
          itemBuilder: (BuildContext context) => [
            const PopupMenuItem<MenuOptionsEnum>(
              value: MenuOptionsEnum.logout,
              height: 30,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 0,
              ),
              child: Text('Saír'),
            ),
          ],
        )
      ],
      title: ProCrisLogo(
        width: 122,
      ),
    );
  }
}
