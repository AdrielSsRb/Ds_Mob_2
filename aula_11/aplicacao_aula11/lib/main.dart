import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // metodo que permite interação com api

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  String url = "http://10.109.83.15:3000/produtos";
  var minhalista;
  var produtos = <Produto> [];

  _getdado()async{
    http.Response resposta = await http.get(Uri.parse(url)); // async e await são comunicações assincronas 
    //Map<String, dynamic> dado = json.decode(resposta.body); pega apenas um elemento e mapeia como string
    var dado = jsonDecode(resposta.body) as List; // transformando essa variavel em uma lista
    //print(resposta.body);
    print(dado);
    minhalista = Produto_n(dado);
    print(minhalista[0]);
  }

  _post()async{

    Map<String, dynamic> produto_a= {
      "id":"4",
      "nome":"PS5",
      "valor":"5000"
    };
    Map<String, dynamic> mensagem= {
      "title":"Desenvolvimento Mobile",
      "Escola":"Senai Roberto Mange",
    };

    //variavel response vai armazenar a resposta do http post
    // http post (Uri.parse(url), headers, body - conteudo do post)
    final response = http.post(
      Uri.parse(url),
      headers: <String,String>{
        'Content-type':'application/json; charset=UTF-8 ',
      },
      body: jsonEncode(mensagem), // JsonEncode formata a mensagem no formato 
      //body: jsonEncode(produto_a),
      );
      print("Post: ${produto_a}");
  }
// função para excluir o post
  _deletepost(){
    http.delete(Uri.parse('http://10.109.83.15:3000/produtos/'));
    print("Item deletado");
  }


 // headers: <String,String>{
   //     'Content-type':'application/json; charset=UTF-8 ',
   // },
   // body: jsonEncode({"id:"4","nome":"Nitendo Switch", "valor":"2800"}),
  /// );
 //}


  _modificarpost(){
    http.put(
      Uri.parse('http://10.109.83.15:3000/produtos/4'),
      headers: <String,String>{
        'Content-type':'application/json; charset=UTF-8 ',
        },
        body: jsonEncode({"id":"4", "nome":"Nitendo Switch", "valor":"2800"}),    
      );   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App post http"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Consumo da API", style: TextStyle(fontSize: 18),),
          ElevatedButton(onPressed: _getdado, child: Text("Ler")),
          ElevatedButton(onPressed: _post, child: Text("Enviar")),
          ElevatedButton(onPressed: _deletepost, child: Text("Deletar")),
          ElevatedButton(onPressed: _modificarpost, child: Text("Alterar")),
        ],
        ),
      ),
    );
  }
}

class Produto{
  final String id;
  final String nome;
  final String valor;
  Produto(this.id, this.nome, this.valor);
//factory sera responsavel por mapear o nosso json na classe produto
  factory Produto.fromJson(Map<String, dynamic>json){
    return Produto(
      json['id'], json['nome'], json['valor']
    );
  }
}

class Produto_n{
  List prod=[]; // criando uma lista chamada prod para a classe produto_n
  Produto_n(this.prod); // construtor da clase produto_n
}

