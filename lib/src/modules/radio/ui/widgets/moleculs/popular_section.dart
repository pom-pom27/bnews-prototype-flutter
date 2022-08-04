import 'package:flutter/material.dart';
import 'package:pp_spbe/src/common/common.dart';
import 'package:pp_spbe/src/modules/radio/ui/widgets/atomic/atomic.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopularPodcastSection extends StatelessWidget {
  const PopularPodcastSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.md,
          ),
          child: SpbeText.title1(locale.radio_popular_episode),
        ),
        const SizedBox(height: Spacing.dp * 1.2),
        SizedBox(
          height: 140,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const PopularPodcastItemList();
            },
            separatorBuilder: (context, idx) {
              return const SizedBox(
                width: Spacing.md,
              );
            },
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
