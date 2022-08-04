import 'package:flutter/material.dart';
import 'package:pp_spbe/src/common/themes/themes.dart'; //theme
import 'package:pp_spbe/src/modules/beranda/ui/pages/advokasi.dart';
import 'package:pp_spbe/src/modules/beranda/ui/pages/legal.dart';
import 'package:pp_spbe/src/modules/beranda/ui/pages/luhkum.dart';

import '../widgets/widgets.dart';
import 'pages.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key, this.index = 0}) : super(key: key);

  final int index;

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: 4, vsync: this, initialIndex: widget.index);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  final list = const [
    'Beranda',
    'Kategori',
    'Layanan',
    'Forum',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: Spacing.dp * 6.5),
            height: double.infinity,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const [
                PpidPage(),
                Legal(),
                Advokasi(),
                Luhkum(),
              ],
            ),
          ),
          Positioned(
            child: SpbeTabbar(list: list, tabController: _tabController),
          ),
        ],
      ),
    );
  }
}
