import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // Importa o pacote http para fazer solicitações HTTP
import 'dart:convert'; // Importa o pacote para converter os dados recebidos em JSON

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String cep = ''; // Variável para armazenar o número do CEP digitado pelo usuário
  String? logradouro; // Variáveis para armazenar as informações do CEP
  String? bairro;
  String? cidade;
  String? ddd;
  String? estado;

  // Função assíncrona para consultar as informações do CEP na API
  Future<void> _consultaCEP() async {
    try {
      // URL da API de consulta de CEP com o número do CEP fornecido pelo usuário
      String url = "https://cep.awesomeapi.com.br/$cep";
      
      // Faz a solicitação GET à API
      http.Response response = await http.get(Uri.parse(url));

      // Verifica se a solicitação foi bem-sucedida (status code 200)
      if (response.statusCode == 200) {
        // Converte os dados recebidos em JSON para um mapa
        Map<String, dynamic> dados = json.decode(response.body);
        
        // Atualiza o estado da tela com as informações do CEP
        setState(() {
          logradouro = dados["address"];
          bairro = dados["district"];
          cidade = dados["city"];
          ddd = dados["ddd"];
          estado = dados["state"];
          cep = ''; // Limpa o campo de texto após a consulta ser concluída
        });
      } else {
        // Lança uma exceção se a solicitação falhar
        throw Exception('Erro ao consultar API');
      }
    } catch (e) {
      // Captura e imprime qualquer exceção ocorrida durante a consulta
      print('Erro na consulta: $e');
      // Aqui você pode mostrar uma mensagem de erro para o usuário, se necessário
    }
  }

  // Função para limpar todos os campos
  void _limparCampos() {
    setState(() {
      cep = '';
      logradouro = null;
      bairro = null;
      cidade = null;
      ddd = null;
      estado = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP consulta CEP"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Campo de texto para o usuário digitar o número do CEP
            TextField(
              decoration: InputDecoration(labelText: 'Digite o CEP'),
              onChanged: (value) {
                setState(() {
                  cep = value; // Atualiza o valor de 'cep' à medida que o usuário digita
                });
              },
            ),
            SizedBox(height: 20.0),
            // Botão para acionar a consulta do CEP
            ElevatedButton(
              onPressed: () {
                _consultaCEP(); // Chama a função para consultar o CEP
              },
              child: Text('Buscar informações do CEP'),
            ),
            SizedBox(height: 20.0),
            // Exibe as informações do CEP se estiverem disponíveis
            if (logradouro != null) Text('Logradouro: $logradouro'),
            if (bairro != null) Text('Bairro: $bairro'),
            if (cidade != null) Text('Cidade: $cidade'),
            if (ddd != null) Text('DDD: $ddd'),
            if (estado != null) Text('Estado: $estado'),
            SizedBox(height: 20.0),
            // Botão para limpar todos os campos
            ElevatedButton(
              onPressed: _limparCampos,
              child: Text('Limpar'),
            ),
          ],
        ),
      ),
    );
  }
}
