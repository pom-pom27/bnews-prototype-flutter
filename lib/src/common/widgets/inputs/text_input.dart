import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {Key? key,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.enabled = true,
      this.controller,
      this.isObscureText = false,
      this.maxLines = 1})
      : super(key: key);

  final String hintText;

  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool enabled;
  final bool isObscureText;
  final int maxLines;
  final TextEditingController? controller;

  //WIP: create Password.

  final localSpacing = Spacing.dp * 1.5;
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      controller: controller,
      obscureText: isObscureText,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: prefixIcon != null
            ? const EdgeInsets.all(Spacing.xs)
            : const EdgeInsets.symmetric(
                horizontal: Spacing.md, vertical: Spacing.md),
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: EdgeInsets.all(localSpacing),
                child: FaIcon(
                  prefixIcon,
                  size: localSpacing,
                ),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: EdgeInsets.all(localSpacing),
                child: FaIcon(
                  suffixIcon,
                  size: localSpacing,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Spacing.sm),
        ),
      ),
    );
  }
}
