import 'package:flutter/material.dart';

class ReservasScreen_13 extends StatelessWidget {
  const ReservasScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    diaSemana(int day) {
      switch (day) {
        case 1:
          return ('L');
          break;

        case 2:
          return ('M');
          break;

        case 3:
          return ('X');
          break;

        case 4:
          return ('J');
          break;

        case 5:
          return ('V');
          break;

        case 6:
          return ('S');
          break;
        case 7:
          return ('D');
          break;
        default:
          return ('Day Not Found');
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Text(
            textAlign: TextAlign.center,
            DateUtils.dateOnly(DateTime.now()).month.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              diaSemana(DateTime.now().weekday),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              DateTime.now().day.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              DateTime.daysPerWeek.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              DateTime.now().add(const Duration(days: 1)).day.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ]),
        ]),
      ),
    );
  }
}
