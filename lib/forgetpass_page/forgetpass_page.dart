import 'package:flutter/material.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({Key? key}) : super(key: key);

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
                "Recuperação de Senha",
                style: TextStyle(fontSize: 24, fontFamily: 'Sansation'),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              _buildTextField("Insira um email para a recuperação"),
              SizedBox(height: 20),
              _buildButton("Enviar email", onPressed: () {
                // Implementar a lógica para enviar o email de recuperação
              }, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildButton(String label, {VoidCallback? onPressed, Color? color}) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(color: Colors.white, fontFamily: 'Sansation'),
          ),
        ),
      ),
    );
  }
}
