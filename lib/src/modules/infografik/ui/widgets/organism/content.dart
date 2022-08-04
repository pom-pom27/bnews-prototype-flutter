import '../widgets.dart';

class ContentInfografik extends StatefulWidget {
  final String? title;

  const ContentInfografik({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  State<ContentInfografik> createState() => _ContentInfografikState();
}

class _ContentInfografikState extends State<ContentInfografik> {
  int? _value = 1;

  final categoryData = List.filled(6, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Spacing.dp * 0.9),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: SpbeText.title1('KATEGORI INFOGRAFIK'),
        ),
        const SizedBox(height: Spacing.dp * 0.7),
        SizedBox(
          height: 38,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, idx) {
              return ChoiceChip(
                label: const Text('Semua'),
                selected: _value == idx,
                onSelected: (bool selected) {
                  setState(() {
                    _value = idx;
                  });
                },
              );
            },
            separatorBuilder: (_, __) => const SizedBox(
              width: Spacing.sm,
            ),
            itemCount: 5,
          ),
        ),
        const SizedBox(height: Spacing.dp * 1.4),

        // Grid Content
        const GridViewSample()
      ],
    );
  }
}
