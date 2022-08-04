import '../widgets.dart';

class SearchInfografik extends StatelessWidget {
  const SearchInfografik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(Spacing.md),
      child: SearchField(hintText: locale.search_infografik),
    );
  }
}
