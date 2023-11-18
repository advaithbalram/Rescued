import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rescue2/theme/theme_helper.dart';
import 'package:rescue2/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Rescued',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginPageTwoScreen,
      routes: AppRoutes.routes,
    );
  }
}
