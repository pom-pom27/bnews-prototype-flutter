import 'package:flutter/material.dart';
import '../../styles/styles.dart';

class SpbeText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const SpbeText({required this.text, this.style});

  SpbeText.heading1(this.text, {Color? color})
      : style = heading1Style.copyWith(color: color);
  SpbeText.heading2(this.text, {Color? color})
      : style = heading2Style.copyWith(color: color);
  SpbeText.heading3(this.text, {Color? color})
      : style = heading3Style.copyWith(color: color);
  SpbeText.heading4(this.text, {Color? color})
      : style = heading4Style.copyWith(color: color);

  SpbeText.title1(this.text, {Color? color})
      : style = title1.copyWith(color: color);

  SpbeText.body(this.text, {Color? color})
      : style = bodyStyle.copyWith(color: color);
  SpbeText.bodyTwo(this.text, {Color? color})
      : style = profileMenu.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
