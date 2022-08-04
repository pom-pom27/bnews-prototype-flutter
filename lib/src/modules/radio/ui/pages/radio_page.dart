import 'package:flutter/material.dart';
import 'package:pp_spbe/src/common/common.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pp_spbe/src/modules/radio/ui/widgets/widgets.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({Key? key}) : super(key: key);

  //TODO:transalte

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: Spacing.lg,
              ),
              children: [
                const RadioHeaderSection(),
                const SpbeDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
                  child: SearchField(hintText: locale.search_radio_hint),
                ),
                const SizedBox(height: Spacing.md),
                const AvailableCategory(),
                const SpbeDivider(),
                const UpcomingPodcastSection(),
                const SizedBox(height: Spacing.md),
                const PopularPodcastSection(),
                const SizedBox(height: Spacing.md),
                const PodcastStationSection(),
                const SizedBox(height: Spacing.md),
                const PlaylistPodcastSection(),
                const SizedBox(height: Spacing.md),
                const LatestPodcastSection()
              ],
            ),
          ),
          const FloatingMusicCard()
        ],
      ),
    );
  }
}
