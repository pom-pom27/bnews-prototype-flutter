import 'package:flutter/material.dart';
import '../../../../../common/common.dart';

import 'item_berita.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    Key? key,
    required this.listData,
  }) : super(key: key);

  final List listData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, idx) {
        return const NewsItem();
      },
      separatorBuilder: (_, __) => const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Spacing.md,
        ),
        child: Divider(
          color: kBlueGrey100,
        ),
      ),
      itemCount: listData.length,
    );
  }
}
