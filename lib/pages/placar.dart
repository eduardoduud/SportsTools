import 'package:flutter/material.dart';

class Placar extends StatefulWidget {
  const Placar({Key? key}) : super(key: key);

  @override
  State<Placar> createState() => _PlacarState();
}

class _PlacarState extends State<Placar> {
  int _counter1 = 0;
  int _counter2 = 0;
  String inputTime1 = 'Nome do Time 1';
  String inputTime2 = 'Nome do Time 2';

  void _attNome() {
    setState(() {
      inputTime1;
      inputTime2;
    });
  }

  void _incrementCounter1() {
    setState(() {
      if (_counter1 == 99) {
      } else {
        _counter1++;
      }
    });
  }

  void _incrementCounter2() {
    setState(() {
      if (_counter2 == 99) {
      } else {
        _counter2++;
      }
    });
  }

  void _subtrairCounter1() {
    setState(() {
      if (_counter1 == 0) {
        _counter1 = 0;
      } else {
        _counter1--;
      }
    });
  }

  void _subtrairCounter2() {
    setState(() {
      if (_counter2 == 0) {
        _counter2 = 0;
      } else {
        _counter2--;
      }
    });
  }

  void _zerarCounters() {
    setState(() {
      _counter1 = _counter2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  border:
                  Border(right: BorderSide(color: Colors.black, width: 2))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: _incrementCounter1,
                  onLongPress: _subtrairCounter1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton.extended(
                            label: Text(inputTime1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                            backgroundColor: Colors.orange[400],
                            foregroundColor: Colors.black,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: TextField(
                                        onChanged: (value) {
                                          inputTime1 = value;
                                        },
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                            onPressed: () {
                                              _attNome();
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Salvar'))
                                      ],
                                    );
                                  });
                            }),
                        Text(
                          '$_counter1',
                          style: const TextStyle(
                            fontSize: 140,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.black, width: 2))),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: _incrementCounter2,
                  onLongPress: _subtrairCounter2,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton.extended(
                            label: Text(inputTime2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9)),
                            backgroundColor: Colors.blue[500],
                            foregroundColor: Colors.black,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: TextField(
                                        onChanged: (value) {
                                          inputTime2 = value;
                                        },
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                            onPressed: () {
                                              _attNome();
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Salvar'))
                                      ],
                                    );
                                  });
                            }),
                        Text(
                          '$_counter2',
                          style: const TextStyle(
                            fontSize: 140,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 240,
              ),
              FloatingActionButton(
                onPressed: _zerarCounters,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                child: const Text('Zerar'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

