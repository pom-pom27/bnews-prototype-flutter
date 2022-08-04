import '../widgets.dart';

class MenuTile extends StatelessWidget {
  final MMenuTile mMenuTile;
  const MenuTile(this.mMenuTile);
  // const MenuTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final locale = AppLocalizations.of(context)!;

    return Column(
      children: [
        mMenuTile.icon,
        const SizedBox(
          height: 10,
        ),
        SpbeText.bodyTwo(
          mMenuTile.name,
        )
      ],
    );
  }
}
