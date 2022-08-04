import 'package:flutter/material.dart';
import '../../styles/text_style.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: heading3Style,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
