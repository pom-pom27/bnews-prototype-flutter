//fonts icon
//svg
import 'package:pp_spbe/main.dart'; //logger

//styling widget global
// string bahasa

import '../../../modules.dart'; // widget local

class Luhkum extends StatelessWidget {
  const Luhkum({Key? key}) : super(key: key);

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
                  title1: 'Luhkum ',
                  title2: 'PPID',
                  subtitle: '',
                ),
                const SizedBox(
                  height: Spacing.sm,
                ),
                SpbeText.body(
                  'Sebagai Badan Pembinaan Hukum Tentara Nasional Indonesia yang ikut membidani lahirnya Undang-Undang Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik (UU KIP)',
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
        ],
      ),
    );
  }
}
