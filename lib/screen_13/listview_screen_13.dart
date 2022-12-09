import 'package:examen_13/screen_13/routes_13.dart';
import 'package:examen_13/screen_13/screen_13.dart';
import 'package:flutter/material.dart';

class ListViewScreen_13 extends StatelessWidget {
  final option = const ['Pistas', 'Monitores', 'Reservas'];
  const ListViewScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluter App'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: Icon(AppRoutes_13.MenuOptions_13s[index].icon),
          title: Text(AppRoutes_13.MenuOptions_13s[index].name),
          onTap: () => AppRoutes_13.MenuOptions_13s[index].screen,
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: option.length,
      ),
    );
  }
}
