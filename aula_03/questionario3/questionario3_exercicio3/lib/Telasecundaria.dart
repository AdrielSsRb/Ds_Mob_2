import 'package:flutter/material.dart';
import 'package:questionario3_exercicio3/main.dart';

class Telasecundaria extends StatefulWidget {
  const Telasecundaria({Key? key}) : super(key: key);

  @override
  State<Telasecundaria> createState() => TelasecundariaState();
}

class TelasecundariaState extends State<Telasecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ronaldinho Gaúcho"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Estatísticas do Ronaldinho Gaúcho',
                      style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 15,
                      width: 250,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://wallpapercave.com/wp/wp1881385.jpg',
                      height: 180,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Telaprincipal()),
                        );
                      },
                      child: Text("Tela principal"),
                    ),
                  ],
                ),
              ],
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
                _buildDataRow('Gols', '283', '0,47'),
                _buildDataRow('Assistências', '177', '0,29'),
                _buildDataRow('Troféus', '25', '-'),
                _buildDataRow('Temporadas de MVP', '2', '-'),
                _buildDataRow('Jogos disputados', '762', '-'),
                _buildDataRow('Jogos como titular', '650', '-'),
                _buildDataRow('Dribles completados', '1897', '-'),
                _buildDataRow('Passes completos', '6274', '-'),
                _buildDataRow('Chutes ao gol', '1264', '-'),
                _buildDataRow('Cartões amarelos', '67', '-'),
                _buildDataRow('Cartões vermelhos', '4', '-'),
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


/// MUDANÇAS
/// import 'package:flutter/material.dart';

class TelaJoeBurrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joe Burrow'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
