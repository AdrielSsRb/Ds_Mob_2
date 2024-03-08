import 'package:questionario3_exercicio3/Telaprimaria.dart';
import 'package:questionario3_exercicio3/Telasecundaria.dart';
import 'package:questionario3_exercicio3/Telaterciaria.dart';

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
          title: Text("Jogos e jogadores"),
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

            //COLUNA DE BASQUETE
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.MKWbsSGWvyz4M79LMxKURQHaHd?rs=1&pid=ImgDetMain',
                      width: 160,
                      height: 100,)
                     ],
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Telaprimaria())); 
                    }, child: 
                      Text("Basquete")), 
                  ],
                ),  
              ],
            ),
           
            //COLUM DE FUTEBOL
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://i.pinimg.com/originals/78/26/bb/7826bb12258e6c461c243bd12b0489ee.jpg',
                      width: 130,
                      height: 100,)
                 ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [               
                ElevatedButton(onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Telasecundaria()));                  
                  }, child: Text("FUTEBOL")
                    ),
                  ],
                ),
              ],
            ),
            
            //COLUNA DA NFL
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.xUK3vNbilqXZrH4ZGdAnHAAAAA?rs=1&pid=ImgDetMain',
                      width: 130,
                      height: 100,)
                 ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Telaterciaria())); 
                }, 
                  child: 
                  Text("NFL")),
                    ],
                ),
              ],
            )

            //apenas separando os containers
  
          ],
        ),
      ),
    );
  }
}
 