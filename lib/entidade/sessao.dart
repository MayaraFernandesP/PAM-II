const _rotulosPadrao = <String>[];

class Sessao {
  final String id;
  final String FilmeId;
  final DateTime date;
  final int sala;
  final bool poltronaDisponivel;
  final List<String> rotulos;

  Sessao({
    required this.id,
    required this.FilmeId,
    required this.date,
    required this.sala,
    this.poltronaDisponivel = false,
    this.rotulos = _rotulosPadrao,
  });
}
