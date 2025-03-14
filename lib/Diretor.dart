class Diretor{
late String nome;
late String bio;
late DateTime birthyear;
late DateTime deathyear;
Diretor(){
  nome = '';
  bio = '';
  birthyear = DateTime.now();
  deathyear = DateTime.now();
}
Diretor.v(this.nome, this.bio, this.birthyear, this.deathyear);

Diretor.fromjson(Map<String, dynamic> json)
  : nome = json['Name'] as String,
  bio = json['Bio'] as String,
  birthyear = json['Birth'] as DateTime,
  deathyear = json ['Death'] as DateTime;

Map<String, dynamic> toJson() => {
  'Name' : nome,
  'Bio' : bio,
  'Birth' : birthyear,
  'Death' : deathyear,
};  
}