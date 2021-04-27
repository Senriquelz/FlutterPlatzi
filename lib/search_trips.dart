import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'search_item.dart';

class SearchTrips extends StatelessWidget{
  
  const SearchTrips({Key key }): super(key: key);

  static final nombrePagina = "Listado";

  static final List<Map<String, dynamic>> datos = [    
  ];
  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(10, (i) => "busqueda $i");
    TextEditingController editingController = TextEditingController();
    //final title = 'Long List';

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("\nSearch"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  /*Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('\nSearch'),
      ),
      body:
         TextFormField(
             decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search",
               prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ), 
        /*ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Icon(Icons.people, color: Colors.white),
            ),
            title: Text("Titulo"),
            subtitle: Text('subtitulo'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          );
        },
      ),*/
    );
  }*/
  }
}