import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List<int> _listaNumeros = [8,167,100,50,13];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView page'),
      ),

      body: _crearLista()
    );
  }

  Widget _crearLista(){
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext contex, int index){

        final image = _listaNumeros[index];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: FadeInImage(
            placeholder: AssetImage('assets/gif/jar_loading.gif'),
            image: NetworkImage('https://picsum.photos/id/$image/500/300')),
        );
      },
    );
  }
}
