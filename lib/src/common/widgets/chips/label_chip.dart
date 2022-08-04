import 'package:flutter/material.dart';

import '../../common.dart';

class LabelChip extends StatelessWidget {
  const LabelChip({
    Key? key,
    required this.title,
    required this.labelColor,
    required this.titleColor,
  }) : super(key: key);

  final String title;
  final Color labelColor;
  final Color titleColor;

  const LabelChip.green(this.title)
      : labelColor = kGreen200,
        titleColor = kGreen600;
  const LabelChip.blue(this.title)
      : labelColor = kGreen200,
        titleColor = kGreen600;
  const LabelChip.red(this.title)
      : labelColor = kGreen200,
        titleColor = kGreen600;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: labelColor,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
        ),
      ),
    );
  }
}
