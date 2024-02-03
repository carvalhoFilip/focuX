import 'package:flutter/material.dart';
import '../home_page/home_page.dart'; // Importe a classe HomePage do diretório correto
import '../use_terms/use_terms.dart'; // Importe a classe UseTermsPage do diretório correto

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool _termsAccepted = false;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100),
              Text(
                "Crie uma conta",
                style: TextStyle(fontSize: 24, fontFamily: 'Sansation'),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              _buildTextField("Nome", controller: _nameController),
              SizedBox(height: 10),
              _buildTextField("E-mail", controller: _emailController),
              SizedBox(height: 10),
              _buildTextField("Senha", obscureText: true, controller: _passwordController),
              SizedBox(height: 20),
              _buildButton("Criar Conta", onPressed: () {
                // Implementar a lógica para criar conta
                // Após criar a conta, redirecione para a HomePage
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage(userName: _nameController.text)),
                // );
              }, color: Colors.green),
              SizedBox(height: 20),
              Text(
                "ou entrar com",
                style: TextStyle(fontSize: 16, fontFamily: 'Sansation'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              _buildButtonWithImage("Entrar com Apple", 'image/Vector.png', onPressed: () {
                // Entrar com Apple
              }, color: Colors.black),
              SizedBox(height: 10),
              _buildButtonWithImage("Entrar com Google", 'image/Vector02.png', onPressed: () {
                // Entrar com Google
              }, color: Colors.black),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _termsAccepted,
                    onChanged: (value) {
                      setState(() {
                        _termsAccepted = value!;
                      });
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UseTermsPage()), // Navega para a tela de termos de uso
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.black, // Altera a cor do texto para preto
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Sansation',
                        decoration: TextDecoration.underline, // Mantém o sublinhado
                      ),
                    ),
                    child: Text("Aceite os termos de uso"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, {bool obscureText = false, TextEditingController? controller}) {
    return TextField(
      controller: controller,
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

  Widget _buildButtonWithImage(String label, String imagePath, {VoidCallback? onPressed, Color? color}) {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 24, height: 24), // Imagem à esquerda do texto
            SizedBox(width: 8), // Espaçamento entre a imagem e o texto
            Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
