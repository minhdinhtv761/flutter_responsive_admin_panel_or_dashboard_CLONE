import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuTile extends StatelessWidget {
  final String title;
  final String svgAsset;
  final VoidCallback onTap;

  const MenuTile({
    Key? key,
    required this.title,
    required this.svgAsset,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        svgAsset,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        maxLines: 1,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
      onTap: onTap,
    );
  }
}