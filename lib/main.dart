import 'dart:ui';

import 'package:flutter/material.dart';

// Método de entrada de flutter
void main() {
  runApp(Contador());
}

// Creamos clase que construye los widgets de la app
class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  // variable para el contador
  var contador = 0;
  // Variable para identicar el campo de texto
  var txtCampo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contador",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(title: Text("Contador App")),
        body: Column(
          children: [
            // Campo de texto
            Padding(
              padding: EdgeInsets.all(40),
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                ),
                controller: txtCampo,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            // Creamos el boton
            ElevatedButton.icon(
              label: Text(
                "Incrementar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: Icon(Icons.access_time_sharp),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 70),
                primary: Colors.purple,
              ),
              onPressed: () {
                if (contador == 100) {
                } else {
                  // Listener del botón
                  contador++;
                }
                // Mostar el valor del contador en el campo de texto
                txtCampo.text = contador.toString();
              },
            ),

            Padding(padding: EdgeInsets.all(20)),
            // Creamos el boton
            ElevatedButton(
                onPressed: () {
                  // Listener del botón
                  contador = 0;
                  // Mostar el valor del contador en el campo de texto
                  txtCampo.text = contador.toString();
                },
                child: Text("Reiniciar")),

            Padding(padding: EdgeInsets.all(20)),
            // Creamos el boton
            ElevatedButton(
                onPressed: () {
                  // Listener del botón
                  if (contador == 0) {
                  } else {
                    contador--;
                  }
                  // Mostar el valor del contador en el campo de texto
                  txtCampo.text = contador.toString();
                },
                child: Text("Decrementar")),
          ],
        ),
      ),
    );
  }
}
