import 'package:flutter/material.dart';
import '../../../../../common/common.dart';
import '../atomic/atomic.dart';

class NewArticleSection extends StatelessWidget {
  const NewArticleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          child: SpbeText.title1('TERBARU'),
        ),
        const SizedBox(
          height: Spacing.sm,
        ),
        SizedBox(
          height: 210,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
            ),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemBuilder: (context, idx) {
              return const ItemArtikelTerbaru();
            },
            separatorBuilder: (_, __) => const SizedBox(
              width: Spacing.md,
            ),
            itemCount: 3,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: Spacing.md),
          child: Divider(
            color: kBlueGrey100,
          ),
        ),
      ],
    );
  }
}
