import '../widgets.dart';

class FooterInfografik extends StatelessWidget {
  const FooterInfografik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.only(top: Spacing.dp),
      child: Column(
        children: [
          TextButton.icon(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(kRed600),
            ),
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: Text(locale.memuat_lagi),
          )
        ],
      ),
    );
  }
}
