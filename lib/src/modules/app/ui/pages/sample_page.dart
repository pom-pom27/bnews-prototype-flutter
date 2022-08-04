import 'package:flutter/material.dart';
import 'package:pp_spbe/src/common/common.dart';

//create episode populer dan stasiun berlangganan

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Component Zone'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.symmetric(vertical: Spacing.md),
        children: const [],
      ),
    );
  }
}
