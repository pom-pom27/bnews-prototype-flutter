import 'package:flutter/material.dart';
import 'package:pp_spbe/gen/assets.gen.dart';
import 'package:pp_spbe/src/common/common.dart';

class LatestPodcastItem extends StatelessWidget {
  const LatestPodcastItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: kBlueGrey100),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: Spacing.sm,
          left: Spacing.sm,
          bottom: Spacing.sm,
        ),
        child: Row(
          children: [
            Container(
              width: 70,
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
                padding: const EdgeInsets.only(
                  left: Spacing.md,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TitleCard(
                            title:
                                '#19 - Cara Efektif Menyalurkan asdasd asdas adasdas',
                          ),
                          const SizedBox(
                            height: Spacing.xs,
                          ),
                          Text(
                            '02 Agustus 2021, 11:18 WIB',
                            style: bodyStyle.copyWith(color: kBlueGrey300),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          splashRadius: 30,
                          icon: const Icon(Icons.bookmark_add_outlined)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
