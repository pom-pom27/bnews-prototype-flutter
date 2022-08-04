import 'package:flutter/material.dart';
import 'package:pp_spbe/gen/assets.gen.dart';
import 'package:pp_spbe/src/common/common.dart';

class PodcastStationItem extends StatelessWidget {
  const PodcastStationItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            foregroundImage:
                AssetImage(Assets.images.radio.episode.imgEpisode1.path),
          ),
          const SizedBox(
            height: Spacing.sm,
          ),
          const Text(
            'BABINKUM TNI',
            textAlign: TextAlign.center,
            style: heading4Style,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
