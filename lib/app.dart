import 'package:cinemay/pages/cinema_pade.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cinema",
      initialRoute: "/",
      routes: {
        "/": (_) => const CinemaPage(),
      },
    );
  }
}