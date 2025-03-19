class Genero{
  late String nome;
  late String descricao;
Genero()
  {
    nome = '';
    descricao = '';
  }
Genero.v(this.nome, this.descricao);

  Genero.fromjson(Map<String, dynamic> json)
  : nome = json['Name'] as String,
  descricao = json['Description'] as String;

  Map<String, dynamic> toJson() => {
    'Name' : nome,
    'Description' : descricao,
  };
}
