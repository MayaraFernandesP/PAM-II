import 'package:cinemay/entidade/filme.dart';

class RepositorioFilme {
  List<Filme> select() {
    return <Filme>[
      Filme(
        titulo: "Divertidamente 2 ",
        poster: "https://pbs.twimg.com/media/GIFe454XsAA8WV-.jpg:large",
        sinopse:
            "Divertida-mente 2, da Disney e da Pixar regressa à mente de Riley, recém-chegada à adolescência, enquanto o Quartel General é alvo de uma demolição súbita para dar espaço a algo totalmente inesperado: novas Emoções! A Alegria, a Tristeza, a Raiva, o Medo e a Repulsa, que têm feito, sem dúvida, uma boa gestão, não sabem como reagir à chegada da Ansiedade. E parece que ela não veio sozinha.",
        duracao: 96,
        classificacao: "Livre",
      ),
      Filme(
        titulo: "wolverine e deadpool",
        poster:
            "https://upload.wikimedia.org/wikipedia/pt/2/2a/Deadpool_%26_Wolverine_cartaz.jpg",
        sinopse:
            "Wolverine está se recuperando quando cruza seu caminho com Deadpool. Juntos, eles formam uma equipe e enfrentam um inimigo em comum.",
        duracao: 127,
        classificacao: "+18 anos",
      ),
    ];
  }
}
