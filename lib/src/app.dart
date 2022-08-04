import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/navigation/navigation.dart';
import 'package:routemaster/routemaster.dart';

import 'common/common.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('id', '') //indonesia
      ],

      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      theme: SpbeTheme.theme,
      // darkTheme: ThemeData.dark(),
      routeInformationParser: const RoutemasterParser(),
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (context) {
          const isLoggedIn = true;

          //ganti routes berdasarkan auth
          return isLoggedIn
              ? Routers.loggedInRouteMap(context)
              : Routers.loggedOutRouteMap(context);
        },
      ),
    );
  }
}
