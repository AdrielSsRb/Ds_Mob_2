import 'package:questionario3_exercicio2/Listadecompras.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({super.key});

  @override
  State<Telaprincipal> createState() => TelaprincipalState();
}

class TelaprincipalState extends State<Telaprincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Frases em Telas"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Lista de alimentos 🍽",
                style: TextStyle(fontSize: 35, fontFamily: 'ProtesRiot' ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue, 
                  width:325, 
                  height: 10,),
              ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Telaprimaria())); 
              }, child: 
              Text("Lista",
              style: TextStyle(fontSize: 22, fontFamily: 'ProtesRiot'),)),
            ],
          ),
          ],
        ),
      ),
    );
  }
}