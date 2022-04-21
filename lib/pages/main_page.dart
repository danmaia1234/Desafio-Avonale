import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:teste_dan/core/api.dart';
import 'package:teste_dan/core/filme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<dynamic> filmes = <Results>[];

  metodo() {
    API.vr().then((response) {
      setState(() {
        Map mapa = json.decode(response.body);
        filmes = mapa['results'];
      });
    });
  }

  _MainPageState() {
    metodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Filmes"),
      ),
      body: ListaFilmes(),
    );
  }

  ListaFilmes() {
    return ListView.builder(
      itemCount: filmes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            filmes[index]['title'].toString()
          ),
        );
      },
    );
  }
}
