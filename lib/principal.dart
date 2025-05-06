import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff535353), // Fondo morado
        title: const Center(
          child: Text(
            'Pantalla Principal',
            style: TextStyle(
              color: Color(0xffffffff), // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353), // Color del texto
              ),
              child: const Text('pantalla 1'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353),
              ),
              child: const Text('pantalla 2'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353),
              ),
              child: const Text('pantalla3'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353),
              ),
              child: const Text('pantalla4'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353),
              ),
              child: const Text('pantalla5'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353),
              ),
              child: const Text('pantalla6'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla9');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353),
              ),
              child: const Text('pantalla7'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla10');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff535353),
              ),
              child: const Text('pantalla8'),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
