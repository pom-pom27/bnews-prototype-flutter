import 'package:flutter/material.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../common/common.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:routemaster/routemaster.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routeName = '/splash';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //fake loading 2 second
    Future.delayed(const Duration(seconds: 0), () {
      Routemaster.of(context).replace('/app');
    });
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Assets.svg.backgroundSplashScreen.svg(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 120,
              child: Column(children: [
                Assets.images.imgLogoTni
                    .image(width: Spacing.dp * 9.0, height: Spacing.dp * 9.0),
                const SizedBox(
                  height: Spacing.md,
                ),
                const Text(
                  'BABINKUM TNI',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Spacing.lg,
                  ),
                ),
                const SizedBox(
                  height: Spacing.xs,
                ),
                Text(
                  locale.appDescription.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ]),
            ),
            Positioned(
              child: Column(
                children: const [
                  Text(
                    'V1.0.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Spacing.xs,
                  ),
                  Text(
                    'Powered by Siklus Indonesia',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              left: 0,
              right: 0,
              bottom: 90,
            )
          ],
        ),
      ),
    );
  }
}
