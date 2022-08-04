import 'package:flutter/material.dart';

import '../../common.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    Key? key,
    required this.title1,
    required this.title2,
    required this.subtitle,
  }) : super(key: key);
  final String title1;
  final String title2;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title1,
            style: heading1Style,
            children: [
              TextSpan(
                text: title2,
                style: heading1Style.copyWith(color: kRed600),
              ),
            ],
          ),
        ),
        SpbeText.title1(subtitle),
      ],
    );
  }
}
