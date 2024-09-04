import 'package:cinemeu/entidade/filme.dart';
import 'package:cinemeu/repositorio/repositorio_filme.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class FilmeViewModel extends ChangeNotifier {
  late List<Filme> filmes;

  FilmeViewModel useLista(List<Filme> filmes) {
    this.filmes = filmes;
    notifyListeners();
    return this;
  }

  void useCinema(String id) {
    filmes = RepositorioFilme().select(id);
    notifyListeners();
  }

  static ChangeNotifierProvider<FilmeViewModel> novo() =>
      ChangeNotifierProvider(
        create: (_) => FilmeViewModel().useLista([]),
      );
}
