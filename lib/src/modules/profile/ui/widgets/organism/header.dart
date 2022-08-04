import '../widgets.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 55),
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1)),
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: Assets.images.imgUser1)),
          ),
        ),
        //NOTE - Profile Name
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              SpbeText.heading2(
                'Selja Sampe Rante',
                color: Colors.white,
              ),
              SpbeText.bodyTwo(
                'selja@bekasinews.id',
                color: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }
}
