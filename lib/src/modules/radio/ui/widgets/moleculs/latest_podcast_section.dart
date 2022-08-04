import 'package:flutter/material.dart';
import 'package:pp_spbe/src/common/common.dart';
import 'package:pp_spbe/src/modules/radio/ui/widgets/atomic/latest_podcast_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LatestPodcastSection extends StatelessWidget {
  const LatestPodcastSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Spacing.md,
            right: Spacing.md,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpbeText.title1(locale.radio_latest_podcast),
              // InkWell(
              //   onTap: () {},
              //   child: Ink(
              //     child: SpbeText.title1(
              //       'LIHAT SEMUA >',
              //       color: kRed600,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(height: Spacing.dp * 1.2),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.md,
          ),
          itemBuilder: (context, index) {
            return const LatestPodcastItem();
          },
          separatorBuilder: (context, idx) {
            return const SizedBox(
              height: Spacing.md,
            );
          },
          itemCount: 6,
        ),
        const SizedBox(
          height: Spacing.dp,
        ),
        Align(
          alignment: Alignment.center,
          child: TextButton.icon(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(kRed600),
            ),
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: Text(locale.memuat_lagi),
          ),
        )
      ],
    );
  }
}
