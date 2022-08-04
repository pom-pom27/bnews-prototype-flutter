import 'package:flutter/material.dart';
import 'package:pp_spbe/gen/assets.gen.dart';
import 'package:pp_spbe/src/common/common.dart';

class PopularPodcastItemList extends StatelessWidget {
  const PopularPodcastItemList({
    Key? key,
  }) : super(key: key);

  final widthItem = 140.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthItem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage(Assets.images.radio.imgUpcomingBanner.path),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kRed600.withOpacity(0.45),
              borderRadius: BorderRadius.circular(8),
              // gradient: LinearGradient(
              //   begin: FractionalOffset.topCenter,
              //   end: FractionalOffset.bottomCenter,
              //   colors: [
              //     kRed600.withOpacity(0.3),
              //     kRed600,
              //   ],
              //   stops: const [0.0, 1.0],
              // ),
            ),
          ),
          Positioned(
            width: widthItem,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.dp * .8,
                vertical: Spacing.dp * .6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bantuan Hukum | Babinkum TNI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: Spacing.xs,
                  ),
                  Text(
                    '#20 - Dasar Advokasi Yang Wajib Anda Pahami.',
                    style: bodyStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
