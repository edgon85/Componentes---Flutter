import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;

  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _agregar10();
      }
    });
  }

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
      controller: _scrollController,
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


  void _agregar10(){
    for(var i=0; i<10; i++){
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {

    });
  }
}
