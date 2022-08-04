import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pp_spbe/src/common/common.dart';

class FloatingMusicCard extends StatelessWidget {
  const FloatingMusicCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: kBlueGrey100),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            color: kRed600,
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.podcast,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.dp),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: Spacing.dp * 1.2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '#19 - Cara Efektif Menyalurkan asdasd asdas adasdas',
                            style: heading3Style,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: Spacing.xs,
                          ),
                          Text(
                            '02 Agustus 2021, 11:18 WIB',
                            style: bodyStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  const FaIcon(
                    FontAwesomeIcons.play,
                    color: kRed600,
                    size: 25,
                  ),
                  const SizedBox(width: Spacing.md),
                  const FaIcon(
                    FontAwesomeIcons.list,
                    color: kBlueGrey300,
                    size: 22,
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
