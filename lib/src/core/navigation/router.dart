import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../../modules/app/app.dart';
import '../../modules/app/ui/pages/dummy_page.dart';

class Routers {
  static RouteMap loggedInRouteMap(BuildContext context) {
    return RouteMap(
      onUnknownRoute: (_) => const Redirect('/unknown'),
      routes: {
        '/unknown': (route) => const MaterialPage(
              child: DummyScreen(
                name: 'No Page Found.',
              ),
            ),
        '/': (route) => const MaterialPage(
              child: SplashPage(),
            ),
        '/app': (route) => const MaterialPage(
              child: AppPage(),
            ),
      },
    );
  }

  static RouteMap loggedOutRouteMap(BuildContext context) {
    return RouteMap(
      onUnknownRoute: (_) => const Redirect('/login'),
      routes: {
        '/': (route) => const MaterialPage(
              child: SplashPage(),
            ),
        '/login': (route) => const MaterialPage(
              child: DummyScreen(
                name: 'Login',
              ),
            ),
      },
    );
  }

//   // static Route<dynamic> generatedRoute(RouteSettings settings) {
//   //   final args = settings.arguments;

//   //   switch (settings.name) {
//   //     case '/':
//   //       return MaterialPageRoute(builder: (context) => const AppPage());
//   //     case SplashPage.routeName:
//   //       return MaterialPageRoute(builder: (context) => const SplashPage());

//   //     default:
//   //       return MaterialPageRoute(
//   //         builder: (context) => const Scaffold(
//   //           body: Center(
//   //             child: Text('Page not found'),
//   //           ),
//   //         ),
//   //       );
//   //   }
//   // }
// }
}
