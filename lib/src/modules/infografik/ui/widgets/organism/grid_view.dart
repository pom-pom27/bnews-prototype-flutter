import '../widgets.dart';

class GridViewSample extends StatelessWidget {
  const GridViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
      crossAxisSpacing: Spacing.md,
      mainAxisSpacing: Spacing.md,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: dummyGrid.map((e) => ItemImage(e)).toList(),
    );
  }
}
