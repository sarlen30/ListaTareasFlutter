import 'package:examenejercicio1/models/notas.Dart.dart';
import 'package:flutter/material.dart';
class CrearNota extends StatefulWidget {
  const CrearNota({Key? key}) : super(key: key);

  @override
  State<CrearNota> createState() => _CrearNotaState();
}

class _CrearNotaState extends State<CrearNota> {
  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController descripcionCtrl = TextEditingController();
  String nombre = ' ';
  String descripcion = ' ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crear una nueva nota'),),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          _tituloNota(),
          const SizedBox(height: 20),
          _descripcionNota(),
          const SizedBox(height: 20),],),

      floatingActionButton: FloatingActionButton(
        tooltip: 'Enviar',
        onPressed: (){
          if (nombreCtrl.text.isNotEmpty && descripcionCtrl.text.isNotEmpty ) {
            Notas nota =  Notas(nombreCtrl.text, descripcionCtrl.text);
            Navigator.pop(context, nota);
          }
        },
        child: const Icon(Icons.send),

      ),
    );


  }

 Widget _tituloNota() {
   return TextField(
      textCapitalization: TextCapitalization.characters,
     controller: nombreCtrl,
     decoration: InputDecoration(
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20)),
         counterText: nombre.length.toString() +'/20',
         counterStyle: nombre.length >= 20 ? TextStyle(color: Colors.red): TextStyle(color: Colors.deepPurple),
         hintText: 'Escriba el titulo de su nota',
         label: Text('Nota'),
         icon: Icon(Icons.list),
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
             borderSide: BorderSide(width: 4, color: Colors.amber))),
     onChanged: (value){
       setState(() {
         nombre=value;
       });},);}

 Widget _descripcionNota() {
   return TextField(
     textCapitalization: TextCapitalization.characters,
     controller: descripcionCtrl,
     decoration: InputDecoration(
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20)
         ),
         counterText: descripcion.length.toString() +'/20',
         counterStyle: descripcion.length >= 20 ? TextStyle(color: Colors.red): TextStyle(color: Colors.deepPurple),
         hintText: 'Escriba la descripcion de su nota',
         label: Text('Descripción'),
         icon: Icon(Icons.list),
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
             borderSide: BorderSide(width: 4, color: Colors.amber))),
     onChanged: (value){
       setState(() {
         descripcion=value;
       });
     },);
 }


 }






