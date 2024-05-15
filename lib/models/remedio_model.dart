

class Remedio {
  late String nome;
  late String data;
  late int id;
  late int pet;

  Remedio({
    required this.nome,
    required this.data,
    required this.id,
    required this.pet
  });

  Map<String, Object> toMap() {
    return {
      'id': id,
      'nome': nome,
      'pet': pet,
      'data': data
    };
  }

  Remedio.fromMap(Map map) {
    id = map["id"];
    nome = map["nome"];
    pet = map["pet"];
    data = map["data"];
  }
}