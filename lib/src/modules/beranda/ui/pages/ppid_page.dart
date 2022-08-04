import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //fonts icon
//svg
import 'package:pp_spbe/main.dart'; //logger

//styling widget global
// string bahasa

import '../../../modules.dart'; // widget local

class PpidPage extends StatelessWidget {
  const PpidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const informasiList = [1, 2, 3];

    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.only(top: Spacing.lg, bottom: Spacing.md),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchField(
                  onTap: () {
                    logger.d('go to searchPage');
                  },
                  hintText: locale.search_ppid,
                ),
                const SizedBox(
                  height: Spacing.lg,
                ),
                const ScreenTitle(
                  title1: 'PORTAL ',
                  title2: 'BERITA',
                  subtitle: 'Bekasi News',
                ),
                const SizedBox(
                  height: Spacing.sm,
                ),
                SpbeText.body(
                  'Portal berita bekasi news menampilkan berbagai macam berita mulai dari kejahatan sampai keunikan warga bekasi.',
                ),
                // SpbeText.body(
                //   locale.readmore,
                //   color: kBlue600,
                // ),
                const SizedBox(
                  height: Spacing.md,
                ),
              ],
            ),
          ),
          const Divider(
            color: kBlueGrey100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Spacing.dp),
            child: Row(
              children: [
                PPIDMenu(
                  svg: Assets.icons.menus.icChartLine.svg(width: 30),
                  title: 'Kejahatan',
                ),
                PPIDMenu(
                  svg: Assets.icons.menus.icGavelLine.svg(width: 30),
                  title: 'Sepakbola',
                ),
                PPIDMenu(
                  svg: Assets.icons.menus.icCommentError.svg(width: 30),
                  title: 'Edukasi',
                ),
                PPIDMenu(
                  svg: Assets.icons.menus.icCalendar.svg(width: 30),
                  title: "Viral",
                ),
              ],
            ),
          ),
          const Divider(
            color: kBlueGrey100,
          ),
          const SizedBox(
            height: Spacing.md,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpbeText.heading2(locale.informasi_berkala),
                GestureDetector(
                  onTap: () {
                    logger.d('message');
                  },
                  child: Row(
                    children: [
                      SpbeText(
                        text: locale.lihat_selengkapnya,
                        style: const TextStyle(
                            color: kRed600, fontSize: Spacing.dp * 1.2),
                      ),
                      const SizedBox(
                        width: Spacing.sm,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.angleRight,
                        size: Spacing.md,
                        color: kRed600,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Spacing.md,
          ),
          SizedBox(
            height: 180,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
              ),
              itemBuilder: (context, idx) {
                return const UpcomingItemList();
              },
              separatorBuilder: (context, idx) {
                return const SizedBox(
                  width: Spacing.lg,
                );
              },
              itemCount: informasiList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: Spacing.md,
          ),
          const Divider(
            color: kBlueGrey100,
          ),
        ],
      ),
    );
  }
}
