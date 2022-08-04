import '../widgets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 286,
      // decoration: BoxDecoration(border: Border.all()),
      // child: Assets.images.imgUser1.image(),
      child: Stack(
        // fit: StackFit.expand,
        children: [
          Assets.svg.backgroundProfileScreen.svg(
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
