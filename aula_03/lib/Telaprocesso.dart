import 'package:aula_3/Login.dart';
import 'package:flutter/material.dart';
import 'package:aula_3/Telasecundaria.dart';
import 'package:aula_3/main.dart';

class TelaProcesso extends StatefulWidget {
  const TelaProcesso({super.key});

  @override
  State<TelaProcesso> createState() => TelaProcessoState();
}

class TelaProcessoState extends State<TelaProcesso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Processo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          color: Colors.green,
          height: 150,
          width: 150,),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Telaprincipal())); 
          }, child: Text("Tela Principal")),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Telasecundaria()));                  
                }, child: Text("Tela2")),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Login()));                  
                }, child: Text("Login")),
        ],)
    );
  }
}