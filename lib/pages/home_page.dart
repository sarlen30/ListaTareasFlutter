import 'package:examenejercicio1/models/notas.Dart.dart';
import 'package:examenejercicio1/pages/cear_nota_page.Dart.dart';
import 'package:examenejercicio1/pages/info_nota_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Notas> notasList = [];
  Notas? nota;
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de notas'),),
      
      body:  notasList.isEmpty?
      const  Center (
        child: Text('No existen tareas en la lista'),) :
          ListView.builder(
            itemCount: notasList.length,
            itemBuilder: (BuildContext context, int index) {

           return ListTile(
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => InfoPage(nota: notasList[index])));
             },
            title: Text(notasList[index].nombre),
             trailing: IconButton(
               icon: const Icon(Icons.delete),
               onPressed: () {
                 setState(() {
                   notasList.removeAt(index);
                   contador = contador -1;});  }, ),  );} ),
        floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (notasList.length<10){
           nota = await Navigator.push(context, MaterialPageRoute(builder: (context) => const CrearNota() ));

          if (nota != null){
            setState(() {

              notasList.add(nota!);
              contador++;
            });}
          }},
          tooltip: 'Agregar una nota',
          child:
          const Icon(Icons.add),) ,);
  }
}


