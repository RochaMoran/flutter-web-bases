import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text("404 - Página no encontrada", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("Error al acceder a la pagina"),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/stateful'),
                child: const Text("Ir a la página principal"),
              ),
          ],
        ),
      )
    );
  }
}