import 'package:questionario3_exercicio1/Telaprimaria.dart';
import 'package:questionario3_exercicio1/Telasecundaria.dart';
import 'package:questionario3_exercicio1/Telaterciaria.dart';
import 'package:questionario3_exercicio1/Telaquartenaria.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tela Principal 😎 ",
                style: TextStyle(fontSize: 40, fontFamily: 'ProtesRiot' ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue, 
                  width:300, 
                  height: 15,),
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
                }, child: Text("Frase 2")),],
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
          ],
        ),
      ),
    );
  }
}
 