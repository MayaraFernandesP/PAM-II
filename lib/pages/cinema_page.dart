import 'package:cinemeu/componentes/cinema_item.dart';
import 'package:cinemeu/componentes/mapa.dart';
import 'package:cinemeu/vm/cinema_vm.dart';
import 'package:cinemeu/vm/filme_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CinemaPage extends StatelessWidget {
  const CinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CinemaViewModel>(context);
    final cinemas = vm.cinemas;

    final screenSize = MediaQuery.of(context).size;
    final listHeight = screenSize.height * 0.3;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cinemas"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: Mapa(
                cinemas: cinemas,
                onClick: (cinema) => abrirCinema(context, cinema.id),
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: listHeight,
            child: ListView.builder(
              itemCount: cinemas.length,
              itemBuilder: (context, index) => GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => abrirCinema(context, cinemas[index].id),
                child: CinemaItem(
                  cinema: cinemas[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void abrirCinema(BuildContext context, String id) {
    final filmeVM = Provider.of<FilmeViewModel>(
      context,
      listen: false,
    );

    filmeVM.useCinema(id);

    Navigator.pushNamed(
      context,
      "/filmes",
      arguments: id,
    );
  }
}
