import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tag_map/src/pages/LoadPages.dart';
import 'package:tag_map/src/pages/init/InitPage.dart';

import 'app_navigation_observer.dart';

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TagMap',
        navigatorObservers: [AppNavigatorObserver()],
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'),
          Locale('es'),
        ],
        builder: (context, child) => MediaQuery(
          data:
          MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        ),
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        onGenerateRoute: routes,
        home: const LoadPage());
  }

  Route? routes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LoadPage());

      case 'init':
        return MaterialPageRoute(builder: (context) => const InitPage());
    }//SWITCH

    return null;
  }//OBJ
}//CLASS