import 'package:flutter/material.dart';
import 'package:pets_love/models/pet_model.dart';
import 'package:pets_love/screens/anotacao_pet/anotacao_pet_screen.dart';
import 'package:pets_love/screens/consulta_pet/consulta_pet_screen.dart';
import 'package:pets_love/screens/perfil_pet/perfil_pet_screen.dart';
import 'package:pets_love/screens/remedio_pet/remedio_pet_screen.dart';

class CustomNavbar extends StatefulWidget {
  int paginaAberta;
  final Pet pet;

  CustomNavbar({required this.pet, required this.paginaAberta});

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  late Widget paginaAtual;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 0;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => PerfilPetScreen(id: widget.pet.id,),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.pets,
                        color: widget.paginaAberta == 0 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Perfil",
                        style: TextStyle(
                          color: widget.paginaAberta == 0 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 1;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => RemedioPetScreen(id: widget.pet.id,),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.healing,
                        color: widget.paginaAberta == 1 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Remédio",
                        style: TextStyle(
                            color: widget.paginaAberta == 1 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 2;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => ConsultaPetScreen(id: widget.pet.id,),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_hospital,
                        color: widget.paginaAberta == 2 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Consulta",
                        style: TextStyle(
                          color: widget.paginaAberta == 2 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 3;
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => AnotacaoPetScreen(id: widget.pet.id,),
                        ),
                      );
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.event_note,
                        color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Anotações",
                        style: TextStyle(
                            color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
