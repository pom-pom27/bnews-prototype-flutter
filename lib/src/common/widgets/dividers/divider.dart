import 'package:flutter/material.dart';

import '../../common.dart';

class SpbeDivider extends StatelessWidget {
  const SpbeDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: Spacing.md),
      child: Divider(
        color: kBlueGrey100,
      ),
    );
  }
}
