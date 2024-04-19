import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Método que permite interação com API
import 'dart:convert'; // Método que permite conversão de dados
import 'package:formativa_parte1/OutputData.dart'; // Importe o arquivo da tela de saída de dados

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // URL da API
  String url = "http://172.19.192.1:3000/produtos";
  TextEditingController _postInputID = TextEditingController();
  TextEditingController _postInputNOME = TextEditingController();
  TextEditingController _postInputVALOR = TextEditingController();


  // Método para liberar os recursos do controlador
  @override
  void dispose() {
    _postInputID.dispose();
    _postInputNOME.dispose();
    _postInputVALOR.dispose();
    super.dispose();
  }

  // Método POST para enviar os dados para a API
  void _post() {
    String texto1 = _postInputID.text;
    String texto2 = _postInputNOME.text;
    String texto3 = _postInputVALOR.text;


    // Convertendo o texto para um Map JSON
    Map<String, dynamic> data = {
      "id": texto1, // Você pode ajustar isso conforme necessário
      "nome": texto2, // Usando o texto inserido como nome
      "valor": texto3 // Você pode ajustar isso conforme necessário
    };

    http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data), // Passando o Map JSON para o corpo da requisição
    ).then((response) {
      if (response.statusCode == 201) {
        // Verifica se a requisição foi bem-sucedida
        print("Post realizado com sucesso: $data");
      } else {
        // Caso contrário, exibe o status code da resposta
        print("Erro ao realizar o POST: ${response.statusCode}");
      }
    }).catchError((error) {
      // Caso ocorra um erro durante a requisição
      print("Erro ao realizar o POST: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Entrada de Dados"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _postInputID,
              decoration: InputDecoration(
                labelText: 'ID',
              ),
            ),
            TextField(
              controller: _postInputNOME,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              controller: _postInputVALOR,
              decoration: InputDecoration(
                labelText: 'VALOR',
              ),
            ),
            SizedBox(height: 20), // Espaçamento entre o TextField e o botão
            ElevatedButton(
              onPressed: _post,
              child: Text("Enviar"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OutputScreen(),
                      ),
                    );
                  },
                  child: Text("Tela de Visualização"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
