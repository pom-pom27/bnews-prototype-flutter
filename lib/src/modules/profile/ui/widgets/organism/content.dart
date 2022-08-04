import '../widgets.dart';

class ContentProfile extends StatelessWidget {
  const ContentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    List<MSubMenuTile> dummySubMenuTile1 = [
      MSubMenuTile(
        icon1: Assets.icons.profile.icLokasi.svg(),
        name: locale.lokasi,
        field: 'Bandung Kota, Jawa Ba ...',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icLanguagee.svg(),
        name: locale.pilih_bahasa,
        field: 'Indonesia',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icKoleksiSaya.svg(),
        name: locale.koleksi_saya,
        field: '3 Dokumen, 2 Berita, 1 Page dan serja sebagainya',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icNotifikasi.svg(),
        name: locale.notifikasi,
        field: '1 Pemberitahuan',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icBiometric.svg(),
        name: locale.biometric,
        field: 'Aktif',
      ),
    ];

    List<MSubMenuTile> dummySubMenuTile2 = [
      MSubMenuTile(
        icon1: Assets.icons.profile.icTentangKami.svg(),
        name: locale.tentang_kami,
        field: '',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icCatatanRilis.svg(),
        name: locale.catatan_rilis,
        field: '',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icKontakKami.svg(),
        name: locale.kontak_kami,
        field: '',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icSyaratKetentuan.svg(),
        name: locale.syarat_ketentuan,
        field: '',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icKebijakanPrivasi.svg(),
        name: locale.kebijakan_privasi,
        field: '',
      ),
      MSubMenuTile(
        icon1: Assets.icons.profile.icHakIntelektual.svg(),
        name: locale.hak_intelektual,
        field: '',
      ),
    ];

    List<MSubMenuTile> dummySubMenuTile3 = [
      MSubMenuTile(
        icon1: Assets.icons.profile.icKeluar.svg(),
        name: locale.keluar,
        field: '',
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(top: 15),
      // margin: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
            width: double.infinity,
            // decoration: BoxDecoration(border: Border.all()),
            child: SpbeText.heading4('Akun'),
          ),
          Column(
              children: dummySubMenuTile1.map((e) => SubMenuTile(e)).toList()),
          Container(
            margin: const EdgeInsets.only(top: 5),
            color: const Color(0xffECEFF1),
            height: 8,
            width: double.infinity,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
            width: double.infinity,
            // decoration: BoxDecoration(border: Border.all()),
            child: SpbeText.heading4('Lainnya'),
          ),
          Column(
              children: dummySubMenuTile2.map((e) => SubMenuTile(e)).toList()),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            color: const Color(0xffECEFF1),
            height: 8,
            width: double.infinity,
          ),
          Column(
              children: dummySubMenuTile3.map((e) => SubMenuTile(e)).toList()),
          Container(
            margin: const EdgeInsets.only(top: 5),
            color: const Color(0xffECEFF1),
            height: 8,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
