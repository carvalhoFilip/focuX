import 'package:flutter/material.dart';

class PremiumAcess extends StatelessWidget {
  const PremiumAcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obter o mês abreviado e o ano atual
    DateTime now = DateTime.now();
    String month = _getAbbreviatedMonth(now.month);
    String year = now.year.toString();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                  top: 70,
                  child: Text(
                    "Relatório",
                    style: TextStyle(
                      fontFamily: 'Sensation',
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  child: Text(
                    "Datalhado",
                    style: TextStyle(
                      fontFamily: 'Sensation',
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      '$month',
                      style: TextStyle(
                        fontFamily: 'Sensation',
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      year,
                      style: TextStyle(
                        fontFamily: 'Sensation',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.calendar_today,
                  color: Colors.black,
                  size: 24,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 75,
            left: 100,
            child: Image.asset(
              'image/Layer_5_21_.png',
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            top: 380,
            left: 63,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 126,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Acesso total aos recursos premium sem anúncios e sem limites",
                    style: TextStyle(
                      fontFamily: 'Sensation',
                      fontSize: 16,
                      color: Colors.black,

                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Assine o Premium",
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  "R\$9,90/mês",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Escolha plano",
                            style: TextStyle(
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.green
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getAbbreviatedMonth(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }
}