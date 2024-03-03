import 'package:questionario3_exercicio1/Telaprimaria.dart';
import 'package:questionario3_exercicio1/Telasecundaria.dart';
import 'package:questionario3_exercicio1/Telaterciaria.dart';
import 'package:questionario3_exercicio1/main.dart';

import 'package:flutter/material.dart';

class Telaquartenaria extends StatefulWidget {
  const Telaquartenaria({super.key});

  @override
  State<Telaquartenaria> createState() => TelaquartenariaState();
}



class TelaquartenariaState extends State<Telaquartenaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase 4"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('4 - Obrigado por ir até aqui',
              style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Color.fromARGB(255, 123, 17, 198),
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
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Telaterciaria())); 
                  }, child: Text("Frase 3")),
                ],
            )     
        ],)
    );
  }
}