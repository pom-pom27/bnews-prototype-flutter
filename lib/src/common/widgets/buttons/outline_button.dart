import 'package:flutter/material.dart';

import '../../common.dart';

class LineButton extends StatelessWidget {
  final Color color;
  final Function()? onPressed;
  final Widget child;
  const LineButton.primary({required this.onPressed, required this.child})
      : color = kRed600;
  const LineButton.secondary({required this.onPressed, required this.child})
      : color = kBlack;
  const LineButton.danger({required this.onPressed, required this.child})
      : color = kPink600;
  const LineButton.warning({required this.onPressed, required this.child})
      : color = kOrange600;
  const LineButton.info({required this.onPressed, required this.child})
      : color = kBlueLight600;
  const LineButton.success({required this.onPressed, required this.child})
      : color = kTeal600;
  const LineButton.disabled({this.onPressed, required this.child})
      : color = kBlueGrey100;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: child,
      style: OutlinedButton.styleFrom(
        primary: color,
        side: BorderSide(color: color),
      ),
    );
  }
}
