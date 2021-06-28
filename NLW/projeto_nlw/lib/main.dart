import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projeto_nlw/app_widget.dart';


void main() {
  runApp(AppFirebase());
}

// ignore: use_key_in_widget_constructors
class AppFirebase extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<AppFirebase> createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // ignore: prefer_const_constructors
          return Material(
            // ignore: prefer_const_constructors
            child: Center(
              // ignore: prefer_const_constructors
              child: Text(
                "Nao foi possivel iniciar o firebase",
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          // ignore: prefer_const_constructors
          return Material(
            // ignore: prefer_const_constructors
            child: Center(
              // ignore: prefer_const_constructors
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
