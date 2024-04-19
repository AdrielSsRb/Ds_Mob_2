import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Método que permite interação com API
import 'dart:convert'; // Método que permite conversão de dados

class OutputScreen extends StatefulWidget {
  const OutputScreen({Key? key}) : super(key: key);

  @override
  State<OutputScreen> createState() => _OutputScreenState();
}

class _OutputScreenState extends State<OutputScreen> {
  String url = "http://172.19.192.1:3000/produtos";

  List<Produto> produtos = [];

  @override
  void initState() {
    super.initState();
    initData(); // Inicializa os dados da API
  }

  // Método assíncrono para buscar os dados da API
  void initData() async {
    await _getDado();
  }

  // Método para buscar os dados da API
  Future<void> _getDado() async {
    http.Response resposta = await http.get(Uri.parse(url));

    if (resposta.statusCode == 200) { // Verifica se a requisição foi bem-sucedida
      var dado = jsonDecode(resposta.body) as List?;
      
      if (dado != null) { // Verifica se o objeto não é nulo
        setState(() {
          produtos = dado.map((json) => Produto.fromJson(json)).toList();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados da API"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: produtos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(produtos[index].nome),
                    subtitle: Text(produtos[index].valor),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Produto {
  final String id;
  final String nome;
  final String valor;
  
  Produto(this.id, this.nome, this.valor);

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      json['id'] ?? '', // Verifica se 'id' é nulo, se for, atribui uma string vazia
      json['nome'] ?? '', // Verifica se 'nome' é nulo, se for, atribui uma string vazia
      json['valor'] ?? '', // Verifica se 'valor' é nulo, se for, atribui uma string vazia
    );
  }
}
