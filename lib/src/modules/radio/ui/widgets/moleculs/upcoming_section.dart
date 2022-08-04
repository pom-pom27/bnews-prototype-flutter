import 'package:flutter/material.dart';
import 'package:pp_spbe/src/common/common.dart';
import 'package:pp_spbe/src/modules/radio/ui/widgets/atomic/atomic.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UpcomingPodcastSection extends StatelessWidget {
  const UpcomingPodcastSection({
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
          child: SpbeText.title1(locale.radio_upcoming_podcast),
        ),
        const SizedBox(height: Spacing.dp * 1.2),
        SizedBox(
          height: 230,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, idx) {
                return const UpcomingItemList();
              },
              separatorBuilder: (context, idx) {
                return const SizedBox(
                  width: Spacing.md,
                );
              },
              itemCount: 2),
        ),
      ],
    );
  }
}
