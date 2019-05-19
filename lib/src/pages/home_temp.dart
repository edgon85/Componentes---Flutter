import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final option = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _createItemShort(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();
    for (String opt in option) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add(tempWidget)..add(Divider());
    }

    return list;
  }

  List<Widget> _createItemShort(){
    return option.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$item !'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
