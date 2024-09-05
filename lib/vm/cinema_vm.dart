import 'package:cinemeu/entidade/cinema.dart';
import 'package:cinemeu/repositorio/repositorio_cinema.dart';
import 'package:flutter/foundation.dart';
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
