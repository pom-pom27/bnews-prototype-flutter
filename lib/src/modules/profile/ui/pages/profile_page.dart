import '../widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.only(top: 0, bottom: Spacing.md),
        children: [
          Stack(
            children: const [
              BackgroundImage(),
              Body(),
            ],
          ),
        ],
      ),
    );
  }
}
