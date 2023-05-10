import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[200],
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.orange,
                child: Image(
                  width: 125,
                    height: 125,
                    image: AssetImage('assets/logo.png')
                ),
              ),
              const Text('Sports Tools',
                textScaleFactor: 2,
              ),
              const SizedBox(
                height: 75,
              ),
              MaterialButton(
                minWidth: 250.0,
                onPressed: (){
                  Navigator.pushNamed(context, '/placar');
                },
                colorBrightness: Brightness.dark,
                color: Colors.blue,
                elevation: 20.0,
                splashColor: Colors.green,
                highlightColor: Colors.green,
                highlightElevation: 1.0,
                child: Text("Placar"),
              ),
              MaterialButton(
                minWidth: 250.0,
                onPressed: (){
                  Navigator.pushNamed(context, '/equipes');
                },
                colorBrightness: Brightness.dark,
                color: Colors.blue,
                elevation: 20.0,
                splashColor: Colors.green,
                highlightColor: Colors.green,
                highlightElevation: 1.0,
                child: Text("Equipes"),
              ),
              MaterialButton(
                minWidth: 250.0,
                onPressed: (){
                  Navigator.pushNamed(context, '/equipesView');
                },
                colorBrightness: Brightness.dark,
                color: Colors.blue,
                elevation: 20.0,
                splashColor: Colors.green,
                highlightColor: Colors.green,
                highlightElevation: 1.0,
                child: Text("Configurações"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
