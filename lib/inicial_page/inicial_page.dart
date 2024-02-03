import 'package:flutter/material.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Tornar o plano de fundo transparente
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/focusX.jpg'), // Caminho da imagem na pasta 'assets/image/' do projeto
            fit: BoxFit.cover, // Preencher toda a área do container
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto animado
              TweenAnimationBuilder(
                duration: Duration(seconds: 2),
                tween: Tween<double>(begin: 0, end: 1),
                builder: (_, double value, __) {
                  return Opacity(
                    opacity: value,
                    child: Text(
                      "Bem vindo(a)",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 50),
              // Botão "Já possui conta?"
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Já possui conta?",
                  style: TextStyle(fontSize: 18, color: Colors.black), // Texto em verde
                ),
              ),
              SizedBox(height: 20),
              // Botão "Criar conta"
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Criar conta",
                  style: TextStyle(fontSize: 18, color: Colors.black), // Texto em verde
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
