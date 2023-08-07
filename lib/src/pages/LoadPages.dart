import 'package:flutter/material.dart';

import '../controller/ColorManager.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  LoadPageState createState() => LoadPageState();
}

class LoadPageState extends State<LoadPage> {

  @override
  void initState() {
    _changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.PRIMARY,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('lib/assets/images/app/icon.png'),

          const CircularProgressIndicator()
        ]),
    );
  }

  void _changePage() async {
    await Future.delayed(const Duration(seconds: 1));

    Navigator.pushReplacementNamed(context, 'init');
  }//V

//   void _checkUser() {
//     Future.delayed(const Duration(seconds: 2), () async {
//       await authBloc.init();
//       if (authBloc.isLogged()) {
//         await loadData();
//         _checkUserSuccess();
//       } else {
//         _checkUserError();
//       }
//     });
//   }
//
//   void _checkUserSuccess() async {
//     String? token = await FirebaseMessaging.instance.getToken();
//     if (token != null) {
//       await UserSessionsService.getInstance().saveSession(token);
//     }
//
//     FirebaseMessaging.instance.onTokenRefresh.listen((token) async =>
//     await UserSessionsService.getInstance().saveSession(token));
//
//     Navigator.pushReplacementNamed(context, 'dashboard');
//
//     notificationsBloc.fetch();
//   }
//
//   void _checkUserError() async {
//     Preferences.clearUser();
//     Navigator.pushReplacementNamed(context, 'init');
//   }
//
//   Future<void> loadData() async {
//     await installationsBloc.fetch();
//     await installationsBloc.fetchDeviceFavorites();
//     await routinesBloc.fetch();
//     await invitedUsersBloc.fetch();
//     await languageBloc.init();
//     await statsBloc.init();
//     await defaultValuesBloc.init();
//     await ticketsBloc.fetch();
//   }
}