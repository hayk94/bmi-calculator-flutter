import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({
    @required this.icon,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kIconLabelDistance,
        ),
        Text(
          label,
          style: kIconLabelTextStyle,
        )
      ],
    );
  }
}
