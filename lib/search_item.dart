class SearchItem{
  List<Map<String, dynamic>> _datos;

  static final SearchItem _instancia = SearchItem._privado();  

  SearchItem._privado(){
    _datos = [
    ];
  }

  factory SearchItem(){
    return _instancia;
  }

  List<Map<String, dynamic>> get datos{
    return _datos;
  }

  void agregarDatos(Map<String, dynamic> nuevosDatos) {
    _datos.add(nuevosDatos);
  }
}