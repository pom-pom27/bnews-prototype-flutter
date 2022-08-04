import '../widgets.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    List<MMenuTile> dummyMenuTile = [
      MMenuTile(
        icon: Assets.icons.profile.icAccount.svg(),
        name: locale.ubah_profil,
      ),
      MMenuTile(
        icon: Assets.icons.profile.icSetting.svg(),
        name: locale.pengaturan,
      ),
      MMenuTile(
        icon: Assets.icons.profile.icActivity.svg(),
        name: locale.aktifitas,
      ),
      MMenuTile(
        icon: Assets.icons.profile.icFaq.svg(),
        name: locale.pertanyaan,
      ),
    ];

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 38, left: 16, right: 16),
      padding: const EdgeInsets.only(top: 18, bottom: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: kBlueGrey300.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: dummyMenuTile.map((e) => MenuTile(e)).toList(),
      ),
    );
  }
}
