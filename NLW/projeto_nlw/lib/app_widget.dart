import 'package:flutter/material.dart';
import 'package:projeto_nlw/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:projeto_nlw/modules/login/login_pages.dart';
import 'package:projeto_nlw/shared/themes/app_colors.dart';

import 'modules/home/home_page.dart';
import 'modules/splash/splash_page.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: "/home",
      routes: {
        // ignore: prefer_const_constructors
        "/splash": (context) => SplashPage(),
        // ignore: prefer_const_constructors
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage()
      },
    );
  }
}
