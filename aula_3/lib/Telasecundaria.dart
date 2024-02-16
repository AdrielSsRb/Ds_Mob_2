import 'package:aula_3/Telaprocesso.dart';
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
        title: Text("Tela 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.red,
              height: 150,
              width: 150,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaProcesso())); 
              }, child: Text("Tela 3")),
            ],
          )
        ],)
    );
  }
}