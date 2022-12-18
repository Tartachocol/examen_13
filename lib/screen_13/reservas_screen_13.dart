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

    String? pulsado;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            Container(
              color: Colors.grey[300],
              child: Column(children: [
                Text(
                  textAlign: TextAlign.center,
                  DateUtils.dateOnly(DateTime.now()).month.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          const Text(
                            'L',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateTime.now()
                                .subtract(const Duration(days: 1))
                                .day
                                .toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Column(
                        children: [
                          const Text(
                            'M',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateTime.now()
                                .subtract(const Duration(days: 1))
                                .day
                                .toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          const Text(
                            'X',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateTime.now().day.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Column(
                        children: [
                          const Text(
                            'J',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateTime.now()
                                .subtract(const Duration(days: 1))
                                .day
                                .toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          const Text(
                            'V',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateTime.now().day.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'S',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateTime.now()
                                .add(const Duration(days: 14))
                                .day
                                .toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Column(
                        children: [
                          const Text(
                            'D',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            DateTime.now().day.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ]),
              ]),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                  child: const Text(
                    softWrap: true,
                    textAlign: TextAlign.start,
                    '9:00 / 10:00',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const Text(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  'Pista de padel',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.access_time_rounded),
                    Text('duracion : 1h 30 min'),
                  ],
                ),

                /*  Builder(
                  builder: (context) {
                    if (pulsado!.length >= 0) {
                      return TextButton(
                        child: const Text('Cancelar'),
                        onPressed: () {
                          pulsado = "";
                          print(pulsado);
                        },
                      );
                    } else {
                      return TextButton(
                        child: const Text('Reservar'),
                        onPressed: () {
                          pulsado = "true";
                          print(pulsado);
                        },
                      );
                    }
                  },
                ) */
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
