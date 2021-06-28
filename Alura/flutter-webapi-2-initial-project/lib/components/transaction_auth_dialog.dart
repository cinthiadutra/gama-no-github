import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Autenticate"),
      content: TextField(
        obscureText: true,
        maxLength: 4,
      ),
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
            onPressed: () {
              print("cancelou");
            },
            child: Text("Cancelar")),
        // ignore: deprecated_member_use
        FlatButton(
            onPressed: () {
              print("ok");
            },
            child: Text("Confirmar")),
      ],
    );
  }
}
