import 'package:questionario3_exercicio1/Telasecundaria.dart';
import 'package:questionario3_exercicio1/Telaterciaria.dart';
import 'package:questionario3_exercicio1/Telaquartenaria.dart';
import 'package:questionario3_exercicio1/main.dart';

import 'package:flutter/material.dart';

class Telaprimaria extends StatefulWidget {
  const Telaprimaria({super.key});

  @override
  State<Telaprimaria> createState() => TelaprimariaState();
}

class TelaprimariaState extends State<Telaprimaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('1 - primeira frase',
              style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Color.fromARGB(255, 212, 212, 35),
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
                  MaterialPageRoute(builder: (context) => Telasecundaria())); 
              }, child: Text("Frase 2")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Telaterciaria())); 
                }, child: Text("Frase 3")),
              ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Telaquartenaria())); 
                  }, child: Text("Frase 4")),
                ],
            )     
        ],)
    );
  }
}