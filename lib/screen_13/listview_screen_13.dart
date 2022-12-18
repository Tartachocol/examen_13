import 'package:examen_13/route_13/routes_13.dart';
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
        automaticallyImplyLeading: false,
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes_13.MenuOptions13[index].icon),
          title: Text(AppRoutes_13.MenuOptions13[index].name),
          onTap: () {
            final paginas = MaterialPageRoute(
              builder: (context) => AppRoutes_13.MenuOptions13[index].screen,
            );
            Navigator.push(context, paginas);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: option.length,
      ),
    );
  }
}
