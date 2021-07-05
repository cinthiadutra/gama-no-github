import 'package:brasil_fields/brasil_fields.dart';
import 'package:centelhaapp/features/cadastro_page.dart';
import 'package:centelhaapp/features/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginCcu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Image.network(
                      "https://static.wixstatic.com/media/0e316a_9c5440219dfc4373ba699657ce3e032a.jpg/v1/fill/w_113,h_108,al_c,q_80,usm_0.66_1.00_0.01/0e316a_9c5440219dfc4373ba699657ce3e032a.webp"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              CpfInputFormatter(),
                            ],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 14,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Digite seu cpf",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextField(
                            textAlign: TextAlign.center,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Digite sua senha",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ElevatedButton(
                              child: Text("Entrar"),
                              onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeCcu(),
                                    ),
                                  )),
                        ),
                        TextButton(
                          child: Text("Cadastrar"),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CadastroCcu(),
                              )),
                        )
                      ]))
            ]));
  }
}
