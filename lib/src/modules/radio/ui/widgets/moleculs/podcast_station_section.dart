import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pp_spbe/src/common/common.dart';
import 'package:pp_spbe/src/modules/radio/ui/widgets/atomic/atomic.dart';

class PodcastStationSection extends StatelessWidget {
  const PodcastStationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: Spacing.md, right: Spacing.md, bottom: Spacing.dp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpbeText.title1(locale.radio_subscribe_station),
              InkWell(
                onTap: () {},
                child: Ink(
                  child: SpbeText.title1(
                    'LIHAT SEMUA >',
                    color: kRed600,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, idx) {
              return const PodcastStationItem();
            },
            separatorBuilder: (context, idx) {
              return const SizedBox(width: Spacing.md);
            },
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
