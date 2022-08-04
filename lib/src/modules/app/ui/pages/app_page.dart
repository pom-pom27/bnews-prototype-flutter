import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../modules.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key, this.currentIndex = 0}) : super(key: key);

  final int currentIndex;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: allDestinations.map((Destination destination) {
            return destination.page;
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kRed600,
        showUnselectedLabels: true,
        unselectedItemColor: kBlueGrey300,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations
            .map(
              (e) => BottomNavigationBarItem(
                  icon: FaIcon(e.icon),
                  label: e.title,
                  backgroundColor: Colors.white),
            )
            .toList(),
      ),
    );
  }
}

class Destination {
  const Destination(this.title, this.icon, this.page);
  final String title;
  final IconData icon;
  final Widget page;
}

//botom nav body list
const List<Destination> allDestinations = <Destination>[
  Destination('Beranda', FontAwesomeIcons.home, BerandaPage()),
  Destination('Artikel', FontAwesomeIcons.newspaper, ArtikelPage()),
  Destination(
    'Radio',
    FontAwesomeIcons.podcast,
    RadioPage(),
  ),
  Destination('Infografik', FontAwesomeIcons.file, InfografikPage()),
  Destination('Profile', FontAwesomeIcons.userCircle, ProfilePage()),
];
