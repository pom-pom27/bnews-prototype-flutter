import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pp_spbe/gen/assets.gen.dart';
import 'package:pp_spbe/src/common/common.dart';

class PlaylistPodcastItem extends StatelessWidget {
  const PlaylistPodcastItem({
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
            height: widthItem,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
                vertical: Spacing.dp * 1.3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.podcast,
                    size: 50,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: Spacing.xs,
                  ),
                  Text(
                    'Seputar PPID',
                    style: bodyStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: Spacing.dp * .1,
                  ),
                  Text(
                    '300.000 pengikut',
                    style: bodyStyle.copyWith(
                      color: Colors.white,
                    ),
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
