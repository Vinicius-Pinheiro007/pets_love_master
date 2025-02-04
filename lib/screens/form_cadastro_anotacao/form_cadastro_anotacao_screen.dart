import 'package:flutter/material.dart';
import 'package:pets_love/models/anotacao_model.dart';
import 'package:pets_love/models/pet_model.dart';
import 'package:pets_love/screens/perfil_pet/perfil_pet_screen.dart';
import 'package:pets_love/services/anotacao_service.dart';
import 'package:pets_love/services/pet_service.dart';

class FormCadastroAnotacaoScreen extends StatefulWidget {
  int id;

  FormCadastroAnotacaoScreen({required this.id});

  @override
  _FormCadastroAnotacaoScreenState createState() => _FormCadastroAnotacaoScreenState();
}

class _FormCadastroAnotacaoScreenState extends State<FormCadastroAnotacaoScreen> {
  final _tituloController = TextEditingController();
  final _conteudoController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  final PetService petService = PetService();
  final AnotacaoService anotacaoService = AnotacaoService();
  late Pet pet;
  late Future<Pet> _loadPet;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadPet = _getPet(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadPet,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            pet = snapshot.data;
            return Scaffold(
              appBar: AppBar(
                title: Text("Cadastro de Anotacao"),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          controller: _tituloController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Título"),
                        ),
                        TextFormField(
                          controller: _conteudoController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Conteúdo"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Anotacao novoAnotacao = Anotacao(
                                    titulo: _tituloController.text,
                                    conteudo: _conteudoController.text,
                                    pet: pet.id.toString(), id: ''
                                );
                                anotacaoService.addAnotacao(novoAnotacao);

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => PerfilPetScreen(id: widget.id,),
                                  ),
                                );
                              },
                              child: Text(
                                "Cadastrar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }

  Future<Pet> _getPet(int id) async {
    return await petService.getPet(id);
  }
}

