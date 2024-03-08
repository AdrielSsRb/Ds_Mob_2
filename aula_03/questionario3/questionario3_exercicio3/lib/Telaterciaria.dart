import 'package:questionario3_exercicio3/Telaprimaria.dart';
import 'package:questionario3_exercicio3/Telasecundaria.dart';
import 'package:questionario3_exercicio3/main.dart';

import 'package:flutter/material.dart';

class Telaterciaria extends StatefulWidget {
  const Telaterciaria({super.key});

  @override
  State<Telaterciaria> createState() => TelaterciariaState();
}

class TelaterciariaState extends State<Telaterciaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase 3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('3 - tigres tristes',
              style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Color.fromARGB(255, 17, 198, 44),
              height: 15,
              width: 250),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Telaprincipal())); 
                }, child: Text("Tela principal")),
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Telaprimaria())); 
              }, child: Text("Frase 1")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Telasecundaria())); 
                }, child: Text("Frase 2")),
              ],
          ),
        ],)
    );
  }
}