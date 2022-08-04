import '../widgets.dart';

class SubMenuTile extends StatelessWidget {
  // final Widget icon1;
  // final String name;
  // final String? field;

  final MSubMenuTile mSubMenuTile;
  const SubMenuTile(this.mSubMenuTile);
  // SubMenuTile({
  //   Key? key,
  //   required this.icon1,
  //   required this.name,
  //   this.field,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      // decoration: BoxDecoration(border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.only(top: 13, bottom: 12),
        child: Row(
          children: [
            SizedBox(
              width: 19,
              height: 19,
              // decoration: BoxDecoration(border: Border.all()),
              child: mSubMenuTile.icon1,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpbeText.bodyTwo(
                  mSubMenuTile.name,
                  color: kBlueGrey600,
                ),
              ],
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 9),
              width: 150,
              child: Text(
                mSubMenuTile.field.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: kBlueGrey600),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              child: Assets.icons.form.icForwardSm.svg(),
            )
          ],
        ),
      ),
    );
  }
}
