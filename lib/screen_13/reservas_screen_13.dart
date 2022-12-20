import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

class ReservasScreen_13 extends StatefulWidget {
  const ReservasScreen_13({Key? key}) : super(key: key);

  @override
  State<ReservasScreen_13> createState() => _ReservasScreen_13State();
}

class _ReservasScreen_13State extends State<ReservasScreen_13> {
  @override
  Widget build(BuildContext context) {
    bool pulsado = false;
    ElevatedButton muestraBoton(pulsado) {
      if (pulsado) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey),
          child: const Text('Cancelar'),
          onPressed: () {
            setState(() {
              pulsado = !pulsado;
            });
            print(pulsado);
          },
        );
      } else {
        return ElevatedButton(
          child: const Text('Reservar'),
          onPressed: () {
            setState(() {
              pulsado = !pulsado;
            });
            print(pulsado);
          },
        );
      }
    }

    DateTime _selectedDay = DateTime.now();
    DateTime today = DateTime.now();
    void _onDaySelected(DateTime day, DateTime focusedDay) {
      setState(() {
        today = day;
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Reservas'), actions: const [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
        ),
      ]),
      body: Center(
        child: ListView(
          children: [
            Container(
              color: Colors.grey[300],
              child: Column(children: [
                TableCalendar(
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  calendarFormat: CalendarFormat.week,
                  firstDay: DateTime.now(),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: today,
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  onDaySelected: _onDaySelected,
                ),
              ]),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      textAlign: TextAlign.start,
                      '9:00 / 10:30',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      softWrap: true,
                      textAlign: TextAlign.center,
                      'Pista de padel',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.access_time_rounded),
                    Text(
                      'duracion: 1h 30 min',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.group_add_outlined),
                    Text(
                      softWrap: true,
                      textAlign: TextAlign.center,
                      'Jose Manuel',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: muestraBoton(pulsado)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                  child: const Text('Cancelar'),
                  onPressed: () {
                    setState(() {
                      pulsado = !pulsado;
                    });
                    print(pulsado);
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
