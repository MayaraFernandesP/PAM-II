import 'package:cinemay/componentes/cinema_item.dart';
import 'package:cinemay/vm/cinema_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CinemaPage extends StatelessWidget {
  const CinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CinemaViewModel>(context);
    final cinemas = vm.cinemas;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cinemas"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: cinemas.length,
        itemBuilder: (context, index) => CinemaItem(
          cinema: cinemas[index],
          ),
        ),
    );
  }
}