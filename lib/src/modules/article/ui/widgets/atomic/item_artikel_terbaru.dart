import 'package:flutter/material.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../common/common.dart';

class ItemArtikelTerbaru extends StatelessWidget {
  const ItemArtikelTerbaru({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
          border: Border.all(color: kBlueGrey100),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: Assets.images.article.image5,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Spacer(),
            const TitleCard(
              title: 'Acara Sertijab Pejabat Jajaran TNI',
            ),
            const Spacer(),
            Text(
              '02 Agustus 2021, 11:18 WIB',
              style: bodyStyle.copyWith(color: kBlueGrey300),
            ),
            const Spacer(),
            const LabelChip.green('Kegiatan'),
          ],
        ),
      ),
    );
  }
}
