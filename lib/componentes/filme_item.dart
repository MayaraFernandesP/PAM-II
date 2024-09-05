import 'package:cinemeu/entidade/filme.dart';
import 'package:flutter/material.dart';

class FilmeItem extends StatelessWidget {
  final Filme filme;

  const FilmeItem({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(
        left: 4,
        right: 4,
        top: 4,
      ),
      child: Material(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Image.network(
                filme.poster,
                height: 200,
                fit: BoxFit.fitHeight,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  constraints: const BoxConstraints(
                    minHeight: 200,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        filme.titulo,
                        style: tema.textTheme.titleLarge,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duração: ${filme.duracao}min",
                            style: tema.textTheme.bodySmall,
                          ),
                          Text(
                            "Classificação: ${filme.classificacao}",
                            style: tema.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          filme.sinopse,
                          style: tema.textTheme.bodySmall,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
