import 'package:flutter/material.dart';
import '../../../../common/common.dart';

class PPIDMenu extends StatelessWidget {
  const PPIDMenu({
    Key? key,
    required this.title,
    required this.svg,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Widget svg;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(Spacing.md),
              child: svg,
              decoration: BoxDecoration(
                color: kAmber600,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            title,
            textAlign: TextAlign.center,
            style: bodyStyle.copyWith(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
