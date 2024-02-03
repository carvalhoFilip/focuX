import 'package:flutter/material.dart';

class UseTermsPage extends StatelessWidget {
  const UseTermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "TERMO DE USO",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Sensation',
          ),
        ),
        centerTitle: true, // Centraliza o título na app bar
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              // Ação ao pressionar o botão de fechar (X)
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "1. Aceitação dos Termos"
                    "Ao criar uma conta no FocusX, você concorda com estes termos e condições. Certifique-se de ler e compreender completamente os termos antes de prosseguir."
                    "2. Criação de Conta"
                    "2.1 Você deve ter pelo menos 18 anos de idade para criar uma conta no FocusX."
                    "2.2 Você concorda em fornecer informações precisas e atualizadas durante o processo de registro."
                    "2.3 Você é responsável por manter a confidencialidade de sua senha e conta. Você concorda em nos notificar imediatamente sobre qualquer uso não autorizado de sua conta ou qualquer outra violação de segurança."
                    "3. Uso do Aplicativo"
                    "3.1 Ao criar uma conta, você concorda em usar o FocusX apenas para fins legais e de acordo com estes termos."
                    "3.2 Você é o único responsável por todas as atividades realizadas através de sua conta no FocusX."
                    "4. Privacidade"
                    "4.1 Respeitamos sua privacidade e estamos empenhados em proteger suas informações pessoais. Consulte nossa Política de Privacidade para entender como coletamos, usamos e protegemos suas informações."
                    "5. Alterações nos Termos"
                    "5.1 Reservamos o direito de modificar estes termos a qualquer momento, e a versão atualizada dos termos será publicada no FocusX."
                    "6. Encerramento de Conta"
                    "6.1 Você pode encerrar sua conta a qualquer momento, entrando em contato conosco ou seguindo as instruções no aplicativo."
                    "6.2 Reservamos o direito de encerrar ou suspender sua conta a nosso critério, sem aviso prévio ou responsabilidade, por qualquer motivo, incluindo violação destes termos."
                "Ao clicar em Aceito ou criar uma conta no DoIT, você concorda com estes termos e condições.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
