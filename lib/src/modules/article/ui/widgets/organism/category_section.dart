import 'package:flutter/material.dart';
import '../../../../../common/common.dart';
import '../../ui.dart';

class KategoriSection extends StatefulWidget {
  const KategoriSection({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  State<KategoriSection> createState() => _KategoriSectionState();
}

class _KategoriSectionState extends State<KategoriSection> {
  int? _value = 1;

  final categoryData = List.filled(6, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: SpbeText.title1('KATEGORI'),
        ),
        const SizedBox(height: Spacing.sm),
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
        NewsList(
          listData: categoryData,
        ),
        const SizedBox(
          height: Spacing.dp,
        ),
        Align(
          alignment: Alignment.center,
          child: TextButton.icon(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(kRed600),
            ),
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: const Text('Ketuk untuk memuat ulang.'),
          ),
        )
      ],
    );
  }
}
