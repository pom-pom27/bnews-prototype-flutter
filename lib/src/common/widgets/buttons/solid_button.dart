import 'package:flutter/material.dart';

import '../../common.dart';

class SolidButton extends StatelessWidget {
  final Color color;
  final Function()? onPressed;
  final Widget child;

  const SolidButton.primary({required this.onPressed, required this.child})
      : color = kRed600;
  const SolidButton.secondary({required this.onPressed, required this.child})
      : color = kBlack;
  const SolidButton.danger({required this.onPressed, required this.child})
      : color = kPink600;
  const SolidButton.warning({required this.onPressed, required this.child})
      : color = kOrange600;
  const SolidButton.info({required this.onPressed, required this.child})
      : color = kBlueLight600;
  const SolidButton.success({required this.onPressed, required this.child})
      : color = kTeal600;
  const SolidButton.disabled({this.onPressed, required this.child})
      : color = kBlueGrey100;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(color)),
    );
  }
}
