import '../widgets.dart';

class ItemImage extends StatelessWidget {
  // const ItemImage({ Key? key }) : super(key: key);
  final MGrid mGrid;
  const ItemImage(this.mGrid);

  @override
  Widget build(BuildContext context) {
    return mGrid.image;
  }
}
