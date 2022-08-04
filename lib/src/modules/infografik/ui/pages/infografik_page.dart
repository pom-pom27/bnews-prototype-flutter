import './pages.dart';

class InfografikPage extends StatelessWidget {
  const InfografikPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.only(bottom: Spacing.md),
        children: const [
          HeaderInfografik(),
          BodyInfografik(),
          FooterInfografik()
        ],
      ),
    );
  }
}
