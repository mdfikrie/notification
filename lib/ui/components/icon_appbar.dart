import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconAppBar extends StatelessWidget {
  final String icon;
  IconAppBar(this.icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset('${icon}'),
    );
  }
}
