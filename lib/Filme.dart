class Filme {
  late String nome;
  late String descricao;
  late String poster;
  late String diretor;
  late String genero;
  Filme()
  {
    nome = '';
    descricao = '';
    poster = '';
    diretor = '';
    genero = '';
  }

  Filme.v(this.nome, this.descricao, this.poster, this.diretor, this.genero,);
  
  Filme.fromjson(Map<String, dynamic> json)
  : nome = json['title'] as String,
  descricao = json['description'] as String,
  poster = json['poster'] as String,
  genero = json['genre'] as String,
  diretor = json['director'] as String;

  Map<String, dynamic> toJson() => {
  'title' : nome,
  'description' : descricao,
  'poster' : poster,
  'genre' : genero,
  'director': diretor,
  };
}
