import 'package:flutter/material.dart';

class Equipes extends StatefulWidget {
  const Equipes({Key? key}) : super(key: key);

  @override
  State<Equipes> createState() => _EquipesState();
}

class _EquipesState extends State<Equipes> {

  List<String> listaEquipe = [];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];
  var _value = 'a';

  void _attEquipe() {
    setState(() {
      listaEquipe.add(_value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: FloatingActionButton.extended(
                  label: const Text('Adicionar jogador'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: TextField(
                              onChanged: (value) {
                                _value = value;
                              },
                            ),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    _attEquipe();
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Salvar'))
                            ],
                          );
                        });
                  }),
            ),
          ),
          SizedBox(
            height: 400,
            width: 200,
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: listaEquipe.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.blue[colorCodes[index]],
                  child: Center(child: Text('${listaEquipe[index]}')),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
