import 'package:flutter/material.dart';
import 'package:questionario3_exercicio4/Disciplina.dart';
import 'package:questionario3_exercicio4/ResultPage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _nota1Controller = TextEditingController();
  final TextEditingController _nota2Controller = TextEditingController();
  final TextEditingController _nota3Controller = TextEditingController();

  List<Disciplina> disciplinas = [
    Disciplina(nome: 'Disciplina 1', notas: []),
    Disciplina(nome: 'Disciplina 2', notas: []),
    Disciplina(nome: 'Disciplina 3', notas: []),
    Disciplina(nome: 'Disciplina 4', notas: []),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notas do Aluno'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome do Aluno'),
              ),
              SizedBox(height: 20.0),
              for (var i = 0; i < disciplinas.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(disciplinas[i].nome),
                    SizedBox(height: 8.0),
                    TextField(
                      controller: i == 0 ? _nota1Controller : i == 1 ? _nota2Controller : i == 2 ? _nota3Controller : _nota1Controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Nota 1'),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      controller: i == 0 ? _nota1Controller : i == 1 ? _nota2Controller : i == 2 ? _nota3Controller : _nota1Controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Nota 2'),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      controller: i == 0 ? _nota1Controller : i == 1 ? _nota2Controller : i == 2 ? _nota3Controller : _nota1Controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Nota 3'),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ElevatedButton(
                onPressed: () {
                  for (var i = 0; i < disciplinas.length; i++) {
                    List<double> notas = [
                      double.parse(i == 0 ? _nota1Controller.text : i == 1 ? _nota2Controller.text : _nota3Controller.text),
                      double.parse(i == 0 ? _nota1Controller.text : i == 1 ? _nota2Controller.text : _nota3Controller.text),
                      double.parse(i == 0 ? _nota1Controller.text : i == 1 ? _nota2Controller.text : _nota3Controller.text),
                    ];
                    setState(() {
                      disciplinas[i].notas = notas;
                    });
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(disciplinas: disciplinas, nome: _nomeController.text),
                    ),
                  );
                },
                child: Text('Calcular Média'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
