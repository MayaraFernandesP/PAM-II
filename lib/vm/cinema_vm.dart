import 'package:cinemay/entidade/cinema.dart';
import 'package:cinemay/repositorio/repositorio_cinema.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CinemaViewModel extends ChangeNotifier {
  late List<Cinema> cinemas;

  CinemaViewModel useLista(List<Cinema> cinemas) {
    this.cinemas = cinemas;
    notifyListeners();
    return this;
  }

  Cinema? getById(String id) {
    return cinemas.where((c) => c.id == id).firstOrNull;
  }

  static ChangeNotifierProvider<CinemaViewModel> novo() =>
      ChangeNotifierProvider(
        create: (_) => CinemaViewModel().useLista(
          RepositorioCinema().select(),
        ),
      );
}
