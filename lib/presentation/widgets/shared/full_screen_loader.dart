import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadinMessages() {
    final messages = <String>[
      'Cargando películas',
      'Comprando palomitas de maiz',
      'Cargando populares',
      'Llamando a mi novia',
      'Ya mero...',
      'Esto está tardando más de lo esperado :(',
    ];

    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Espere por favor'),
        const SizedBox(
          height: 20,
        ),
        const CircularProgressIndicator(
          strokeWidth: 2,
        ),
        const SizedBox(
          height: 10,
        ),
        StreamBuilder(
          stream: getLoadinMessages(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Cargado...');
            return Text(snapshot.data!);
          },
        )
      ]),
    );
  }
}
