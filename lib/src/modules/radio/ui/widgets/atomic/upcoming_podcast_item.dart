import 'package:flutter/material.dart';
import 'package:pp_spbe/gen/assets.gen.dart';
import 'package:pp_spbe/src/common/common.dart';

class UpcomingItemList extends StatelessWidget {
  const UpcomingItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Container(
            color: Colors.transparent,
            child: Assets.images.radio.imgUpcomingBanner.image(
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity),
          ),
          Container(
            height: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  kRed600.withOpacity(0.1),
                  kRed600,
                ],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
          Positioned(
            width: 330,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
                vertical: Spacing.dp * 1.2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Advokasi | Babinkum TNI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
                    child: Text(
                      '#20 - Dasar Advokasi Yang Wajib Anda Pahami.',
                      style: heading2Style.copyWith(
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Text(
                    '05 Oktober | 15:00 WIB',
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
