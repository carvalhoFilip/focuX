import 'package:flutter/material.dart';
import 'package:telasvaga_estagio/inicial_page/inicial_page.dart';
import 'package:telasvaga_estagio/login_page/login_page.dart'; // Importe a classe LoginPage
import 'package:telasvaga_estagio/cadastro_page/cadastro_page.dart'; // Importe a classe CadastroPage

void main() {
  runApp(MaterialApp(
    home: InicialPage(), // Define a InicialPage como tela inicial
    routes: {
      '/login': (context) => LoginPage(), // Define a rota da tela de login
      '/cadastro': (context) => CadastroPage(), // Define a rota da tela de cadastro
    },
  ));
}
