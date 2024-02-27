import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Informações do Atleta'),
        ),
        body: SingleChildScrollView( // Adicionado SingleChildScrollView para permitir rolagem se necessário
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://i.ytimg.com/vi/OvCnLQ0jq1k/sddefault.jpg',
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  'CBUM(Cris Bumbsted)',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                // Containers com os textos das informações do atleta
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Mr. Olympia: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10),
                      Text('5 vezes',
                      style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Peso: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10),
                      Text('104 KG',
                        style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Idade: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10),
                      Text('29', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Altura: ',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      SizedBox(width: 10),
                      Text('1,85M', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
