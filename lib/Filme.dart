import 'Diretor.dart';
import 'Genero.dart';

class Filme {
  late String nome;
  late String descricao;
  late String poster;
  late Diretor diretor;
  late Genero genero;
  Filme()
  {
    nome = '';
    descricao = '';
    poster = '';
  }

  Filme.v(this.nome, this.descricao, this.poster, this.diretor, this.genero,);
  
  Filme.fromjson(Map<String, dynamic> json)
  : nome = json['Name'] as String,
  descricao = json['Description'] as String,
  poster = json['Poster'] as String,
  genero = json['Genre'] as Genero,
  diretor = json['Director'] as Diretor;

  Map<String, dynamic> toJson() => {
  'Name' : nome,
  'Description' : descricao,
  'Poster' : poster,
  'Genre' : genero,
  'Director': diretor,
  };
}
