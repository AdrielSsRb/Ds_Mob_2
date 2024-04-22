import 'package:flutter/material.dart';
import 'package:questionario3_exercicio4/Disciplina.dart';

class ResultPage extends StatelessWidget {
  final List<Disciplina> disciplinas;
  final String nome;

  ResultPage({required this.disciplinas, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Nome do Aluno: $nome', style: TextStyle(fontSize: 18.0)),
            SizedBox(height: 20.0),
            for (var disciplina in disciplinas)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Disciplina: ${disciplina.nome}', style: TextStyle(fontSize: 18.0)),
                  Text('Média: ${calculaMedia(disciplina.notas)}', style: TextStyle(fontSize: 18.0)),
                  Text('Situação: ${verificaAprovacao(calculaMedia(disciplina.notas))}', style: TextStyle(fontSize: 18.0)),
                  SizedBox(height: 20.0),
                ],
              ),
          ],
        ),
      ),
    );
  }

  double calculaMedia(List<double> notas) {
    return notas.reduce((a, b) => a + b) / notas.length;
  }

  String verificaAprovacao(double media) {
    return media >= 7.0 ? 'Aprovado' : 'Reprovado';
  }
}
