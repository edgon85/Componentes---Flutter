import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'tamaño de la imagen',
//        divisions: 20,
        value: _valueSlider,
        min: 10.0,
//        max: 300.0,
        max: MediaQuery.of(context).size.height,
        onChanged: (valor) {
          setState(() {
            _valueSlider = valor;
          });
        });
  }

  Widget _createImage() {

    return Image(
      //height: 500.0,
      image: NetworkImage(
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/295fb76c-7179-4c70-a508-a1cce61a876f/dc5bdn1-ad4c205b-31da-4d55-b6df-399712cb0d14.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzI5NWZiNzZjLTcxNzktNGM3MC1hNTA4LWExY2NlNjFhODc2ZlwvZGM1YmRuMS1hZDRjMjA1Yi0zMWRhLTRkNTUtYjZkZi0zOTk3MTJjYjBkMTQucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.HoqnPaQGdlxFM3fXFG2fhWm1EvKGjW6ClFUSE_c2YdE'),
     fit: BoxFit.contain,
      width: _valueSlider,
    );
  }
}
