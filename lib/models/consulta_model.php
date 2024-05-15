class Consulta {
public $pet, $id, $titulo, $data;

function __construct($id, $pet, $titulo, $data) {
$this->id = $id;
$this->pet = $pet;
$this->titulo = $titulo;
$this->data = $data;
}

function toJson() {
return [
'id' => rand(0, 1000),
'pet' => $this->pet,
'titulo' => $this->titulo,
'data' => $this->data
];
}

function fromJson($map) {
$this->id = $map["id"];
$this->titulo = $map["titulo"];
$this->pet = $map["pet"];
$this->data = $map["data"];
}
}