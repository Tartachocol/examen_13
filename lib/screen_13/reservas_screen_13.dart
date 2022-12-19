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
    ElevatedButton muestraBoton(pulsado) {
      if (pulsado) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.grey),
          child: const Text('Cancelar'),
          onPressed: () {
            pulsado = false;
            print(pulsado);
          },
        );
      } else {
        return ElevatedButton(
          child: const Text('Reservar'),
          onPressed: () {
            pulsado = true;
            print(pulsado);
          },
        );
      }
    }

    DateTime _selectedDay = DateTime.now();

    DateTime _focusedDay = DateTime.now();
    bool pulsado = false;
    return Scaffold(
      appBar: AppBar(),
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
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) => _selectedDay == day,
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
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
                    Text('duracion : 1h 30 min'),
                  ],
                ),
                Container(child: muestraBoton(pulsado)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
