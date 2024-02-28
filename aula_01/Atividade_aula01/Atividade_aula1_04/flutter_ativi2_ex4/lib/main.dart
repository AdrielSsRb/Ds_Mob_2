import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Média',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotasPage(),
    );
  }
}

class NotasPage extends StatefulWidget {
  @override
  _NotasPageState createState() => _NotasPageState();
}

class _NotasPageState extends State<NotasPage> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController nota1Controller = TextEditingController();
  final TextEditingController nota2Controller = TextEditingController();
  final TextEditingController nota3Controller = TextEditingController();

  double media = 0;

  void calcularMedia() {
    double nota1 = double.tryParse(nota1Controller.text) ?? 0;
    double nota2 = double.tryParse(nota2Controller.text) ?? 0;
    double nota3 = double.tryParse(nota3Controller.text) ?? 0;

    double mediaCalculada = (nota1 + nota2 + nota3) / 3;

    setState(() {
      media = mediaCalculada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Média'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: 'Nome do Aluno'),
            ),
            SizedBox(height: 20),
            Text(
              'Notas da Disciplina:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nota1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nota 1'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nota2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nota 2'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nota3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nota 3'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularMedia,
              child: Text('Calcular Média'),
            ),
            SizedBox(height: 20),
            Text(
              'Média da Disciplina: ${media.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
