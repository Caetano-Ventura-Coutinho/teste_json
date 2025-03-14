import 'Diretor.dart';
import 'Genero.dart';

class Filme {
  late String nome;
  late String descricao;
  late String poster;
  late Diretor diretor;
  late Genero genero;

  Filme.v(this.nome, this.descricao, this.poster, this.diretor, this.genero,);
  
  Filme.fromjson(Map<String, dynamic> json)
  : nome = json['Name'] as String,
  descricao = json['Description'] as String,
  poster = json['Poster'] as String,
   
}
