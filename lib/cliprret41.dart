import 'package:flutter/material.dart';

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagen Recortada'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Esto regresa a la pantalla anterior
          },
        ),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(70.0),
            topLeft: Radius.circular(170.0),
            bottomRight: Radius.circular(270.0),
            bottomLeft: Radius.circular(270.0),
          ),
          child: Image.network(
            'https://raw.githubusercontent.com/sergio-altamirano/examen/refs/heads/main/spiderman.jpg',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
              return const Center(
                child: Text('Error al cargar la imagen'),
              );
            },
          ),
        ),
      ),
    );
  }
}
