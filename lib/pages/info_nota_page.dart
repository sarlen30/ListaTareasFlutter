import 'package:examenejercicio1/models/notas.Dart.dart';
import 'package:flutter/material.dart';
class InfoPage extends StatelessWidget {

  final Notas nota;
  const InfoPage({Key? key, required this.nota}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Informacion de las notas'),),
      body: Column (
        children: [
      Card(
      child: ListTile(
      title: Text(nota.nombre),
      subtitle: Text(nota.descripcion),), ),
        ],),
      );
  }
}

