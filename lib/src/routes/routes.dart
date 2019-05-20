import 'package:componentes/src/pages/Inputs_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/cards_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext contex) => AnimatedContainerPage(),
    'inputs': (BuildContext contex) => InputsPage()
  };
}
