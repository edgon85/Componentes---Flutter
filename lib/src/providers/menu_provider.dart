import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    // loadData();
  }


// TODO: get data from json
  Future<List<dynamic>> loadData() async{

    final resp = await rootBundle.loadString('assets/data/menu_options.json');
    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    options = dataMap['rutas'];

    return options;
  }
}


final menuProvider = new _MenuProvider();
