import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pp_spbe/src/common/common.dart';

class AvailableCategory extends StatelessWidget {
  const AvailableCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    final List<Map<String, dynamic>> listMenu = [
      {
        'title': 'Kejahatan',
        'page': '',
        'icon': FontAwesomeIcons.fileAlt,
      },
      {
        'title': 'Sepakbola',
        'page': '',
        'icon': FontAwesomeIcons.fileAlt,
      },
      {
        'title': 'Edukasi',
        'page': '',
        'icon': FontAwesomeIcons.fileAlt,
      },
      {
        'title': 'Viral',
        'page': '',
        'icon': FontAwesomeIcons.fileAlt,
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpbeText.title1(locale.radio_avaliable_category),
          const SizedBox(
            height: Spacing.dp * 1.2,
          ),
          Wrap(
            spacing: Spacing.dp,
            runSpacing: Spacing.dp * 1.2,
            children: listMenu
                .map(
                  (e) => InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {},
                    child: Ink(
                      child: FractionallySizedBox(
                        widthFactor: 0.48,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: kBlueGrey100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Spacing.md,
                              vertical: Spacing.xs,
                            ),
                            child: Row(
                              children: [
                                FaIcon(
                                  e['icon'],
                                  color: kAmber600,
                                ),
                                const SizedBox(
                                  width: Spacing.md,
                                ),
                                Expanded(
                                  child: SpbeText(
                                    text: e['title'],
                                    style: bodyStyle.copyWith(
                                      fontSize: Spacing.md,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
