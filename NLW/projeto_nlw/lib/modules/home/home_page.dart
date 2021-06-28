import 'package:flutter/material.dart';
import 'package:projeto_nlw/shared/themes/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text("Olá, Gabul"),
              subtitle: Text("não lembro o texto"),
              trailing: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () { },
              icon: Icon(Icons.home_outlined),
            ),
            Container(
              color: AppColors.primary,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.document_scanner_outlined,
                    color: AppColors.primary)),
          ],
        ),
      ),
    );
  }
}
