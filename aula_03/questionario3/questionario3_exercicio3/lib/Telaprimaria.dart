import 'package:flutter/material.dart';
import 'package:questionario3_exercicio3/main.dart';

class Telaprimaria extends StatefulWidget {
  const Telaprimaria({Key? key}) : super(key: key);

  @override
  State<Telaprimaria> createState() => TelaprimariaState();
}

class TelaprimariaState extends State<Telaprimaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BASQUETE"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Estatísticas do Michael Jordan',
              style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot'),
            ),
            SizedBox(height: 10),
            Container(
              color: Color.fromARGB(255, 212, 212, 35),
              height: 15,
              width: 275,
            ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://miro.medium.com/v2/resize:fit:2760/1*9o8rb7ypeYFqGcS5ElGeTg.jpeg',
                      height: 180,)
                  ],
                ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Telaprincipal()),
                );
              },
              child: Text("Tela principal"),
            ),
            SizedBox(height: 20),
            DataTable(
              columnSpacing: 20,
              columns: [
                _buildDataColumn('Estatísticas'),
                _buildDataColumn('Total'),
                _buildDataColumn('Média'),
              ],
              rows: [
                _buildDataRow('Pontos', '32,292', '30,1'),
                _buildDataRow('Rebotes', '6,672', '6,2'),
                _buildDataRow('Assistências', '5,633', '5,3'),
                _buildDataRow('Roubos de Bola', '2,514', '2,3'),
                _buildDataRow('Bloqueios', '893', '0,8'),
                _buildDataRow('Porcentagem de Arremessos de Quadra', '49,7%', '-'),
                _buildDataRow('Porcentagem de Arremessos de Três Pontos', '32,7%', '-'),
                _buildDataRow('Porcentagem de Lances Livres', '83,5%', '-'),
                _buildDataRow('Temporadas de MVP', '5', '-'),
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

  DataRow _buildDataRow(String title, String total, String mediaPorJogo) {
    return DataRow(
      cells: [
        DataCell(Text(title)),
        DataCell(Text(total)),
        DataCell(Text(mediaPorJogo)),
      ],
    );
  }
}
