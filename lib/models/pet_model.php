Sclass Pet {
public $nome;
public $imageUrl;
public $descricao;
public $idade;
public $sexo;
public $cor;
public $bio;
public $id;

function __construct($nome, $imageUrl, $descricao, $idade, $sexo, $cor, $bio, $id) {
$this->nome = $nome;
$this->imageUrl = $imageUrl;
$this->descricao = $descricao;
$this->idade = $idade;
$this->sexo = $sexo;
$this->cor = $cor;
$this->bio = $bio;
$this->id = $id;
}

public function toMap() {
return [
'id' => $this->id,
'nome' => $this->nome,
'imageUrl' => 'assets/images/toto.png',
'descricao' => $this->descricao,
'idade' => $this->idade,
'sexo' => $this->sexo,
'cor' => $this->cor,
'bio' => $this->bio
];
}

public static function fromMap($map) {
return new Pet($map['nome'], $map['imageUrl'], $map['descricao'], $map['idade'], $map['sexo'], $map['cor'], $map['bio'], $map['id']);
}
}