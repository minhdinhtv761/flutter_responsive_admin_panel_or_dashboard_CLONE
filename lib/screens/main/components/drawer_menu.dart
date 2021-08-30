import 'package:flutter/material.dart';

import 'menu_tile.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Image.asset('assets/images/logo.png'),
        ),
        MenuTile(
          title: 'Dashboard',
          svgAsset: 'assets/icons/menu_dashboard.svg',
          onTap: () {},
        ),
        MenuTile(
          title: 'Transaction',
          svgAsset: 'assets/icons/menu_transaction.svg',
          onTap: () {},
        ),
        MenuTile(
          title: 'Task',
          svgAsset: 'assets/icons/menu_task.svg',
          onTap: () {},
        ),
        MenuTile(
          title: 'Documents',
          svgAsset: 'assets/icons/menu_documents.svg',
          onTap: () {},
        ),
        MenuTile(
          title: 'Store',
          svgAsset: 'assets/icons/menu_store.svg',
          onTap: () {},
        ),
        MenuTile(
          title: 'Notification',
          svgAsset: 'assets/icons/menu_notification.svg',
          onTap: () {},
        ),
        MenuTile(
          title: 'Profile',
          svgAsset: 'assets/icons/menu_profile.svg',
          onTap: () {},
        ),
        MenuTile(
          title: 'Settings',
          svgAsset: 'assets/icons/menu_settings.svg',
          onTap: () {},
        ),
      ],
    );
  }
}