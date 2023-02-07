class Notas {

  String _nombre;
  String _descripcion;

  Notas(this._nombre, this._descripcion);


  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }



  String get descripcion => _descripcion;

  set descripcion(String value) {
    _descripcion = value;
  }
}