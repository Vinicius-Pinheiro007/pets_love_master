class Remedio {
public $nome;
public $data;
public $id;
public $pet;

public function __construct($nome, $data, $id, $pet) {
$this->nome = $nome;
$this->data = $data;
$this->id = $id;
$this->pet = $pet;
}

public function toMap() {
return array(
'id' => $this->id,
'nome' => $this->nome,
'pet' => $this->pet,
'data' => $this->data
);
}

public static function fromMap($map) {
return new self($map["nome"], $map["data"], $map["id"], $map["pet"]);
}
}