import 'package:cinemay/componentes/filme_item.dart';
import 'package:cinemay/vm/cinema_vm.dart';
import 'package:cinemay/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilmePage extends StatelessWidget {
  const FilmePage({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments;

    final vm = Provider.of<FilmeviewModel>(context);
    vm.useCinema((argument ?? "0") as String);

    final filmes = vm.filmes;

    final cinemaVM = Provider.of<CinemaViewModel>(context);
    final title = cinemaVM.getById((argument ?? "0") as String)?.nome;

    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? "Desconheciso"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) => FilmeItem(
          filme: filmes[index],
        ),
      ),
    );
  }
}
