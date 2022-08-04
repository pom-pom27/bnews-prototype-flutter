import '../widgets.dart';

class FooterProfile extends StatelessWidget {
  const FooterProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          SpbeText.heading4('V1.0.0'),
          const SizedBox(
            height: Spacing.xs,
          ),
          const Text(
            'Powered by Siklus Indonesia',
            style: TextStyle(
                fontSize: 11, fontWeight: FontWeight.w400, color: kBlueGrey200),
          )
        ],
      ),
    );
  }
}
