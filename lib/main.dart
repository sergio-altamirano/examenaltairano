import 'package:flutter/material.dart';
import 'package:examen/principal.dart';
import 'package:examen/contenedor1.dart';
import 'package:examen/drawer11.dart';
import 'package:examen/stack21.dart';
import 'package:examen/botton31.dart';
import 'package:examen/cliprret41.dart';
import 'package:examen/switches51.dart';
import 'package:examen/selectable71.dart';
import 'package:examen/drggable81.dart';

void main() => runApp(Actividad());

class Actividad extends StatelessWidget {
  const Actividad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Principal(),

        '/pantalla2': (context) => MyContainer(),
        '/pantalla3': (context) => const MyDrawer(),
        '/pantalla4': (context) => const MyStack(),
        '/pantalla5': (context) => const MyRawMaterialButton(),
        '/pantalla6': (context) => const MyClipRRect(),
        '/pantalla7': (context) => const MySwitches(),
        '/pantalla9': (context) => const MySelectableText(),
        '/pantalla10': (context) => const MyDraggable(),
      },
    );
  }
}
