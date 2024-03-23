import 'package:questionario3_exercicio3/Telaprimaria.dart';
import 'package:questionario3_exercicio3/Telasecundaria.dart';
import 'package:questionario3_exercicio3/main.dart';

import 'package:flutter/material.dart';

class Telaterciaria extends StatefulWidget {
  const Telaterciaria({super.key});

  @override
  State<Telaterciaria> createState() => TelaterciariaState();
}

class TelaterciariaState extends State<Telaterciaria> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estatísticas de Joe Burrow'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Estatísticas de Joe Burrow',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.blue,
              height: 2,
              width: 250,
            ),
            SizedBox(height: 20),
            DataTable(
              columnSpacing: 20,
              columns: [
                _buildDataColumn('Estatística'),
                _buildDataColumn('Total'),
              ],
              rows: [
                _buildDataRow('Jardas de Passe', '5,671'),
                _buildDataRow('Touchdowns de Passe', '60'),
                _buildDataRow('Precisão de Passe (%)', '76.3'),
                _buildDataRow('Heisman Trophy', 'Vencedor em 2019'),
                _buildDataRow('Draft da NFL', '1ª escolha geral em 2020'),
                _buildDataRow('Temporada de Estreia na NFL', 'Promissora'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  DataColumn _buildDataColumn(String label) {
    return DataColumn(
      label: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  DataRow _buildDataRow(String title, String total) {
    return DataRow(
      cells: [
        DataCell(Text(title)),
        DataCell(Text(total)),
      ],
    );
  }
}