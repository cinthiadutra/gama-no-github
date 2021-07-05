import 'package:centelhaapp/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomeCcu extends StatelessWidget {
  const HomeCcu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("A centelha divina"),
        backgroundColor: AppColors.primary,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Pagina Inicial",
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.facebook),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_add,
            ),
            label: "",
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: "Sair",
          ),
        ],
      ),
    );
  }
}
