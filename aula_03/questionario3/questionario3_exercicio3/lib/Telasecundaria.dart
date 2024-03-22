import 'package:flutter/material.dart';
import 'package:questionario3_exercicio3/Telaprimaria.dart';
import 'package:questionario3_exercicio3/Telaterciaria.dart';
import 'package:questionario3_exercicio3/main.dart';

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
              Container(color: Colors.red, height: 15, width: 250),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Telaprincipal()));
                },
                child: Text("Tela principal"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Telaprimaria()));
                },
                child: Text("Frase 1"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Telaterciaria()));
                },
                child: Text("Frase 3"),
              ),
            ],
          ),
          DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Estatísticas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Média por Jogo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Pontos')),
                  DataCell(Text('32,292')),
                  DataCell(Text('30,1')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Rebotes')),
                  DataCell(Text('6,672')),
                  DataCell(Text('6,2')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Assistências')),
                  DataCell(Text('5,633')),
                  DataCell(Text('5,3')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Roubos de Bola')),
                  DataCell(Text('2,514')),
                  DataCell(Text('2,3')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Bloqueios')),
                  DataCell(Text('893')),
                  DataCell(Text('0,8')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Porcentagem de Arremessos de Quadra')),
                  DataCell(Text('49,7%')),
                  DataCell(Text('-')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Porcentagem de Arremessos de Três Pontos')),
                  DataCell(Text('32,7%')),
                  DataCell(Text('-')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Porcentagem de Lances Livres')),
                  DataCell(Text('83,5%')),
                  DataCell(Text('-')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Temporadas de MVP')),
                  DataCell(Text('5')),
                  DataCell(Text('-')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
