class Pet {
  late String nome;
  late String imageUrl;
  late String descricao;
  late int idade;
  late String sexo;
  late String cor;
  late String bio;
  late int id;

  Pet({
  required this.nome,
  required this.imageUrl,
  required this.descricao,
  required this.idade,
  required this.sexo,
  required this.cor,
  required this.bio,
  required this.id
  });

  Map<String, Object> toMap() {
    return {
      'id': id,
      'nome': nome,
      'imageUrl': 'assets/images/toto.png',
      'descricao': descricao,
      'idade': idade,
      'sexo': sexo,
      'cor': cor,
      'bio': bio
    };
  }

  Pet.fromMap(Map map) {
    id= map['id'];
    nome= map['nome'];
    imageUrl= map['imageUrl'];
    descricao= map['descricao'];
    idade= map['idade'];
    cor= map['cor'];
    sexo= map['sexo'];
    bio= map['bio'];
  }
}