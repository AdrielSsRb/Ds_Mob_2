import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:
    Scaffold(appBar: AppBar(
      title: Center(child: Text("Titulo do APP - Aula 1")),
      
    ),
      body:     Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: [
          Container(
            color: Colors.blue,
            width: 200,
            height: 100,
            ),
          Container(            
            child: Text(
              "Apenas um texto", 
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),),
          ElevatedButton(
          onPressed: (){print("Botão pressionado");}, 
          child: Text("Mensagem")),
          Container(
            color: Colors.red,
            width: 200,
            height: 100,
          ),
        ],),
      ), 
    ),
  ),);
}


