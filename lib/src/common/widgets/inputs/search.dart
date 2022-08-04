import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    this.onTap,
    this.controller,
    required this.hintText,
  }) : super(key: key);

  final Function()? onTap;
  final String hintText;

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Spacing.dp * 5),
          ),
          borderSide: BorderSide(color: kBlueGrey100),
        ),
        contentPadding: const EdgeInsets.all(Spacing.xs),
        prefixIcon: const Padding(
          padding: EdgeInsets.all(Spacing.dp * 1.5),
          child: FaIcon(
            FontAwesomeIcons.search,
            size: 15,
          ),
        ),
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Spacing.dp * 5),
          ),
        ),
      ),
    );
  }
}
