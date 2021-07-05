import 'package:brasil_fields/brasil_fields.dart';
import 'package:centelhaapp/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastroCcu extends StatelessWidget {
  final _nomecontroller = TextEditingController();
  final _cpfcontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _senhacontroller = TextEditingController();
  final _celularcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro App"),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "Nome Completo",
                ),
                controller: _nomecontroller,
              ),
              TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "CPF",
                ),
                controller: _cpfcontroller,
              ),
              TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TelefoneInputFormatter(),
                ],
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "Celular",
                ),
                controller: _celularcontroller,
              ),
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
                controller: _emailcontroller,
              ),
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(
                  labelText: "Senha",
                ),
                controller: _senhacontroller,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
