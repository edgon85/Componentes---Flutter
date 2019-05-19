import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }
}

Widget _list() {

  return FutureBuilder(
    future: menuProvider.loadData(),
    initialData: [],
    builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

      print('builder ${snapshot.data}');

      return ListView(
        children: _listItems( snapshot.data ),
      );
    },
  );
}

List<Widget> _listItems(List<dynamic> data) {
 final List<Widget> options = [];
 data.forEach((opt){
   final widgetTemp = ListTile(
     title: Text(opt['text']),
     leading: getIcon(opt['icon']),
     trailing: Icon(Icons.keyboard_arrow_right),
     onTap: (){},
   );

   options..add(widgetTemp)..add(Divider());
 });

 return options;
}
