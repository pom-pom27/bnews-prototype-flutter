import '../widgets.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        //NOTE - Photo Profile
        HeaderProfile(),
        //NOTE - Menu Button
        MenuProfile(),
        //NOTE - Content Bawah
        ContentProfile(),
        //NOTE - Footer
        FooterProfile(),
      ],
    );
  }
}
