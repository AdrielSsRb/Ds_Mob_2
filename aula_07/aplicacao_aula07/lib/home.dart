import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Variáveis para controlar a conversão de moeda
  double valor = 0;
  String moedaEntrada = 'Real';
  String moedaSaida = 'Dólar';
  String resultado = '';

  // Controlador para o campo de texto
  final TextEditingController _controller = TextEditingController();

  // Função para realizar a conversão de moeda
  void converter() {
    setState(() {
      double valorDigitado = double.parse(_controller.text);
      double valorConvertido;

      // Lógica para conversão de moeda
      if (moedaEntrada == 'Real' && moedaSaida == 'Dólar') {
        valorConvertido = valorDigitado / 5.0;
      } else if (moedaEntrada == 'Real' && moedaSaida == 'Euro') {
        valorConvertido = valorDigitado / 5.43;
      } else if (moedaEntrada == 'Dólar' && moedaSaida == 'Real') {
        valorConvertido = valorDigitado * 5.0;
      } else if (moedaEntrada == 'Dólar' && moedaSaida == 'Euro') {
        valorConvertido = valorDigitado * 0.92;
      } else if (moedaEntrada == 'Euro' && moedaSaida == 'Real') {
        valorConvertido = valorDigitado * 5.43;
      } else if (moedaEntrada == 'Euro' && moedaSaida == 'Dólar') {
        valorConvertido = valorDigitado * 1.1;
      } else {
        valorConvertido = valorDigitado;
      }

      // Atualiza o resultado da conversão
      resultado = valorConvertido.toStringAsFixed(2);
    });
  }

  // Variável para armazenar o preço atual do Bitcoin
  String _preco = "0";

  // Função para recuperar o preço atual do Bitcoin
  void _recupera_preco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(Uri.parse(url));

    // Decodifica a resposta e atualiza o preço do Bitcoin
    Map<String, dynamic> dados = json.decode(response.body);
    setState(() {
      _preco = dados["BRL"]["buy"].toString();
    });

    // Exibe o preço atual do Bitcoin no console
    print("Resultado : " + dados["BRL"]["buy"].toString());
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 204, 159, 25),
        title: Text("App BitCoin consulta"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Seção para inserir o valor da moeda e selecionar a moeda de entrada e saída
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Valor',
                  ),
                ),
                SizedBox(height: 20),
                // Seleção da moeda de entrada
                Text('Moeda de entrada:'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                      value: 'Real',
                      groupValue: moedaEntrada,
                      onChanged: (value) {
                        setState(() {
                          moedaEntrada = value.toString();
                        });
                      },
                    ),
                    Text('Real'),
                    Radio(
                      value: 'Dólar',
                      groupValue: moedaEntrada,
                      onChanged: (value) {
                        setState(() {
                          moedaEntrada = value.toString();
                        });
                      },
                    ),
                    Text('Dólar'),
                    Radio(
                      value: 'Euro',
                      groupValue: moedaEntrada,
                      onChanged: (value) {
                        setState(() {
                          moedaEntrada = value.toString();
                        });
                      },
                    ),
                    Text('Euro'),
                  ],
                ),
                SizedBox(height: 20),
                // Seleção da moeda de saída
                Text('Moeda de saída:'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                      value: 'Real',
                      groupValue: moedaSaida,
                      onChanged: (value) {
                        setState(() {
                          moedaSaida = value.toString();
                        });
                      },
                    ),
                    Text('Real'),
                    Radio(
                      value: 'Dólar',
                      groupValue: moedaSaida,
                      onChanged: (value) {
                        setState(() {
                          moedaSaida = value.toString();
                        });
                      },
                    ),
                    Text('Dólar'),
                    Radio(
                      value: 'Euro',
                      groupValue: moedaSaida,
                      onChanged: (value) {
                        setState(() {
                          moedaSaida = value.toString();
                        });
                      },
                    ),
                    Text('Euro'),
                  ],
                ),
                SizedBox(height: 20),
                // Botão para converter o valor
                ElevatedButton(
                  onPressed: converter,
                  child: Text('Converter'),
                ),
                SizedBox(height: 20),
                // Exibição do resultado da conversão
                Text('Resultado: $resultado'),
              ],
            ),
            // Barra de separação
            Column(
              children: [
                Container(
                  width: 325,
                  height: 20,
                  color: Color.fromARGB(250, 194, 159, 5),
                )
              ],
            ),
            // Seção para exibir a imagem do Bitcoin e o preço atual
            Container(
              width: 250,
              height: 125,
              color: const Color.fromARGB(255, 204, 159, 25),
              child: Image.asset('imagens/bitcoin.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Valor do BitCoin: R\$$_preco",
                style: TextStyle(fontSize: 20),
              ),
            ),
            // Botão para consultar o preço atual do Bitcoin
            ElevatedButton(
              onPressed: _recupera_preco,
              child: Text("Consultar Preço"),
            ),
          ],
        ),
      ),
    );
  }
}
