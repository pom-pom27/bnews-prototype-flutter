import 'package:flutter/material.dart';
import '../../../../common/themes/dimens.dart';
import '../widgets/widgets.dart';

class ArtikelPage extends StatelessWidget {
  const ArtikelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      padding: const EdgeInsets.only(
        top: Spacing.lg,
        bottom: Spacing.dp,
      ),
      children: const [
        HeaderArticle(),
        NewArticleSection(),
        KategoriSection(),
      ],
    ));
  }
}
