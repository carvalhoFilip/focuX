import 'package:flutter/material.dart';
import 'package:telasvaga_estagio/forgetpass_page/forgetpass_page.dart'; // Importe a classe ForgetPassPage

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context); // Volta para a página anterior
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100),
              Text(
                "Login",
                style: TextStyle(fontSize: 24, fontFamily: 'Sansation'),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              _buildTextField("E-mail"),
              SizedBox(height: 10),
              _buildTextField("Senha", obscureText: true),
              SizedBox(height: 20),
              _buildButton("Login", onPressed: () {
                // Implementar a lógica para fazer login
              }, color: Colors.green),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push( // Navega para a tela de recuperação de senha
                    context,
                    MaterialPageRoute(builder: (context) => ForgetPassPage()),
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.green, // Altera a cor do texto para verde
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Sansation',
                    decoration: TextDecoration.underline, // Mantém o sublinhado
                  ),
                ),
                child: Text("Esqueci a senha"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildButton(String label, {VoidCallback? onPressed, Color? color}) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
