import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),
          _cardType1(),
          SizedBox(
            height: 20.0,
          ),
          _cardType2(),
          SizedBox(
            height: 20.0,
          ),

        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("Titluto"),
            subtitle: Text("Esto es un subtitulo de la card"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    final card = Container(
//      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/gif/jar_loading.gif'),
            image: NetworkImage(
                'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          /*Image(
            image: NetworkImage(
                'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
          ),*/
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0)),
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
