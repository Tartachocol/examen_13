import 'package:examen_13/route_13/menu_options_13.dart';
import 'package:examen_13/screen_13/screen_13.dart';
import 'package:flutter/material.dart';

class AppRoutes_13 {
  static final MenuOptions13 = <MenuOptions_13>[
    MenuOptions_13(
        name: 'Pistas',
        icon: Icons.sports_basketball_rounded,
        screen: const PiastasScreen_13()),
    MenuOptions_13(
        name: 'Monitores',
        icon: Icons.supervised_user_circle_outlined,
        screen: const MonitoresScreen_13()),
    MenuOptions_13(
        name: 'Resrvas',
        icon: Icons.access_time_rounded,
        screen: const ReservasScreen_13())
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions13) {
      appRoutes.addAll({option.name: (BuildContext contenxt) => option.screen});
    }
    return appRoutes;
  }
}
