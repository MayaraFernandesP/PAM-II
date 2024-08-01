import 'package:cinemay/app.dart';
import 'package:cinemay/vm/cinema_vm.dart';
import 'package:cinemay/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Provedor extends StatelessWidget {
  const Provedor({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        CinemaViewModel.novo(),
        FilmeviewModel.novo(),
      ],
      child: const Aplicacao(),
    );
  }
}
