import 'package:cinemeu/app.dart';
import 'package:cinemeu/vm/cinema_vm.dart';
import 'package:cinemeu/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Provedor extends StatelessWidget {
  const Provedor({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        CinemaViewModel.novo(),
        FilmeViewModel.novo(),
      ],
      child: const Aplicacao(),
    );
  }
}
