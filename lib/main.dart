import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/equipes.dart';
import 'package:primeiro_projeto/pages/home.dart';
import 'package:primeiro_projeto/pages/loading.dart';
import 'package:primeiro_projeto/pages/placar.dart';
import 'package:primeiro_projeto/pages/equipesView.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/placar': (context) => Placar(),
    '/equipes': (context) => Equipes(),
    '/equipesView': (context) => EquipeView()
  },
));
