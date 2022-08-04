import '../widgets.dart';

class BodyInfografik extends StatelessWidget {
  const BodyInfografik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(
          color: kBlueGrey100,
        ),
        SearchInfografik(),
        ContentInfografik()
      ],
    );
  }
}
