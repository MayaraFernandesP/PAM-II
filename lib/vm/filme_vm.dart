import 'package:cinemay/entidade/filme.dart';
import 'package:cinemay/repositorio/repositorio_filme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilmeviewModel extends ChangeNotifier {
  late List<Filme> filmes;

  FilmeviewModel useList(List<Filme> filmes) {
    this.filmes = filmes;
    notifyListeners();
    return this;
  }

  static ChangeNotifierProvider<FilmeviewModel> novo() =>
      ChangeNotifierProvider(
        create: (_) => FilmeviewModel().useList(
          RepositorioFilme().select(),
        ),
      );
}
