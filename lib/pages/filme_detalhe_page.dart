import 'package:flutter/material.dart';

class FilmeDetalhePage extends StatelessWidget {
  const FilmeDetalhePage({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments;
    final filmeId = argument == null ? "" : argument as String;

    return Scaffold(
      body: filmeId.isEmpty ? emptyBody() : body(context, filmeId),
    );
  }

  Widget emptyBody() => const Center(
        child: Text("Nenhum filme selecionado! Volte e selecione."),
      );
      
  Widget body(BuildContext context, String filmeId) {
    return Container();
  }
}
