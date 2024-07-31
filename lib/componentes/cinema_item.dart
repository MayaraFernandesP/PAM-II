import 'package:cinemay/entidade/cinema.dart';
import 'package:flutter/material.dart';

class CinemaItem extends StatelessWidget {
  final Cinema cinema;

  const CinemaItem({
    super.key,
    required this.cinema,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Material(
        elevation: 5,
        child: Text(cinema.nome),
      ),
    );
  }
}
