import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pp_spbe/gen/assets.gen.dart';
import 'package:pp_spbe/src/common/common.dart';

class RadioHeaderSection extends StatelessWidget {
  const RadioHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ScreenTitle(
                  title1: 'RADIO' ' ',
                  title2: 'BEKASI NEWS',
                  subtitle: "Kumpulan Media Lisan Bekasi news"),
              IconButton(
                onPressed: () {},
                icon: Assets.icons.radio.category.icOutlineLibraryBooks.svg(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
