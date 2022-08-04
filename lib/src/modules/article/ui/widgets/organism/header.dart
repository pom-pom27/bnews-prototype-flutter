import 'package:flutter/material.dart';

import '../../../../../common/common.dart';

class HeaderArticle extends StatelessWidget {
  const HeaderArticle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Spacing.md),
          child: ScreenTitle(
            title1: 'KILAS ',
            title2: 'BERITA',
            subtitle: 'LAYANAN ARTIKEL Bekasi News',
          ),
        ),
        SizedBox(
          height: Spacing.dp * 1.5,
        ),
        Divider(
          color: kBlueGrey100,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Spacing.md, horizontal: Spacing.md),
          child: SearchField(hintText: 'Cari Artikel'),
        ),
      ],
    );
  }
}
