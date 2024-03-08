import 'package:questionario3_exercicio1/Telaprimaria.dart';
import 'package:questionario3_exercicio1/Telaterciaria.dart';
import 'package:questionario3_exercicio1/Telaquartenaria.dart';
import 'package:questionario3_exercicio1/main.dart';

import 'package:flutter/material.dart';


class Telasecundaria extends StatefulWidget {
  const Telasecundaria({super.key});

  @override
  State<Telasecundaria> createState() => TelasecundariaState();
}

class TelasecundariaState extends State<Telasecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('2 - Desculpa mas sem criatividade',
              style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.red,
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