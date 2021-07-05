import 'package:centelhaapp/features/cadastro_page.dart';
import 'package:centelhaapp/features/home_page.dart';
import 'package:centelhaapp/features/login.dart';
import 'package:centelhaapp/features/tata.dart';
import 'package:centelhaapp/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CentelhaApp());
}

class CentelhaApp extends StatelessWidget {
  const CentelhaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A centelha Divina',
      theme:
          ThemeData(primarySwatch: Colors.green, primaryColor: Colors.indigo),
      home: SplashPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomeCcu(),
        "/login": (context) => LoginCcu(),
        "/cadastro": (context) => CadastroCcu(),
        "/falecomtata": (context) => FaleComTata(),
      },
    );
  }
}
