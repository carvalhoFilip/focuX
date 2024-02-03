// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   final String userName; // Nome da pessoa cadastrada
//
//   const HomePage({Key? key, required this.userName}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(0), // Remove a AppBar
//         child: Container(), // Widget vazio para substituir a AppBar
//       ),
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Hello $userName',
//                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10), // Espaço entre os textos
//                           Text(
//                             'Let\'s Started!!',
//                             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                     CircleAvatar(
//                       // Exemplo de foto de perfil
//                       backgroundImage: AssetImage('image/Minimal742.jpeg'),
//                       radius: 30,
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(color: Colors.grey),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         _buildStatusItem('Progresso', 0.7),
//                         _buildStatusItem('Performance', 0.4),
//                         _buildStatusItem('Atividade', 0.9),
//                         _buildStatusItem('Conclusão', 0.6),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 20,
//             right: 20,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center, // Centraliza os ícones na tela
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     // Ação para notificação
//                   },
//                   icon: Icon(Icons.notifications),
//                   color: Colors.black,
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     // Ação para agenda
//                   },
//                   icon: Icon(Icons.calendar_today),
//                   color: Colors.black,
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     // Ação para adicionar
//                   },
//                   icon: Icon(Icons.add),
//                   color: Colors.black,
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     // Ação para páginas
//                   },
//                   icon: Icon(Icons.pages), // Substitui o ícone de configuração pelo ícone de páginas
//                   color: Colors.black,
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     // Ação para buscar/procurar
//                   },
//                   icon: Icon(Icons.search),
//                   color: Colors.black,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStatusItem(String title, double progress) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 2,
//           child: Text(
//             title,
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//         Expanded(
//           flex: 8,
//           child: LinearProgressIndicator(
//             value: progress,
//             backgroundColor: Colors.grey,
//             color: Colors.blue,
//           ),
//         ),
//       ],
//     );
//   }
// }
