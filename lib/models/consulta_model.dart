import 'dart:math';

class Consulta {
  late String pet, id, titulo, data;

  Consulta({required this.id, required this.pet, required this.titulo,required  this.data});

  Random random = new Random();

  Map<String, Object> toJson() {
    return {
      'id': random.nextInt(1000).toString(),
      'pet': pet,
      'titulo': titulo,
      'data': data
    };
  }

  Consulta.fromJson(dynamic map) {
    id = map["id"];
    titulo = map["titulo"];
    pet = map["pet"];
    data = map["data"];
  }
}
