import 'package:aula_3/Telasecundaria.dart';
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
          title: Text("App multiplas telas"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tela Principal",
                style: TextStyle(fontSize: 50, fontFamily: 'ProtesRiot' ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue, 
                  width: 150, 
                  height: 150,),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [               
                ElevatedButton(onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Telasecundaria()));                  
                }, child: Text("Tela2")),],
            )
          ],
        ),
      ),
    );
  }
}
 