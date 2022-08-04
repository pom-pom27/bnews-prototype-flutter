import '../widgets.dart';

class HeaderInfografik extends StatelessWidget {
  const HeaderInfografik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          Spacing.md, Spacing.lg, Spacing.md, Spacing.md),
      child: const ScreenTitle(
        title1: 'INFO ',
        title2: 'GRAFIK',
        subtitle: 'MEDIA INFOGRAFIK BEKASI NEWS',
      ),
    );
  }
}
