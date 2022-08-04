import 'package:flutter/material.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../common/common.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Container(
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: Assets.images.article.image6,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LabelChip.green('Kegiatan'),
                  const Spacer(),
                  const TitleCard(
                    title: 'Acara Sertijab Pejabat Jajaran TNI',
                  ),
                  const Spacer(),
                  Text(
                    '02 Agustus 2021, 11:18 WIB',
                    style: bodyStyle.copyWith(color: kBlueGrey300),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
