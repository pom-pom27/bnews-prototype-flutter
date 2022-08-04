import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class SpbeTabbar extends StatelessWidget {
  const SpbeTabbar({
    Key? key,
    required this.list,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final List<String> list;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Spacing.dp * 7.2,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: Container(
          height: Spacing.dp * 4.2,
          decoration: BoxDecoration(
            color: kRed800,
            borderRadius: BorderRadius.circular(Spacing.xl),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.xs),
            child: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Spacing.dp * 2.5,
                ),
                color: Colors.white,
              ),
              labelColor: kRed600,
              unselectedLabelColor: Colors.white,
              // isScrollable: true,
              labelPadding: const EdgeInsets.symmetric(
                horizontal: Spacing.sm,
              ),
              tabs: list
                  .map((e) => Tab(
                        text: e,
                      ))
                  .toList(),

              controller: _tabController,
            ),
          ),
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Spacing.dp * 3.2),
          bottomRight: Radius.circular(Spacing.dp * 3.2),
        ),
        color: kRed600,
      ),
    );
  }
}
