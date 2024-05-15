import 'dart:math';

class Anotacao {
  late String pet, id;
  late String titulo, conteudo;

  Anotacao({required this.id, required this.pet, required this.titulo, required this.conteudo});
  Random random = new Random();


  Map<String, Object> toJson() {
    return {
      'id': random.nextInt(1000).toString(),
      'pet': pet,
      'titulo': titulo,
      'conteudo': conteudo
    };
  }

  Anotacao.fromJson(dynamic map) {
    id = map["id"];
    titulo = map["titulo"];
    pet = map["pet"];
    conteudo = map["conteudo"];
  }
}