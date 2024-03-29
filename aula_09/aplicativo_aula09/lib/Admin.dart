import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  // Controladores de texto para os campos de preço e quantidade de cada produto
  TextEditingController _priceController1 = TextEditingController();
  TextEditingController _quantityController1 = TextEditingController();
  TextEditingController _priceController2 = TextEditingController();
  TextEditingController _quantityController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Produto 1
              Text('Produto 1'),
              TextField(
                controller: _priceController1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Preço '),
              ),
              TextField(
                controller: _quantityController1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Quantidade'),
              ),
              SizedBox(height: 20),

              // Produto 2
              Text('Produto 2'),
              TextField(
                controller: _priceController2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Preço'),
              ),
              TextField(
                controller: _quantityController2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Quantidade'),
              ),
              SizedBox(height: 20),

              // Botões para salvar e limpar
              ElevatedButton(
                onPressed: () {
                  // Salvar os dados dos produtos
                  final double price1 = double.tryParse(_priceController1.text) ?? 0.0;
                  final int quantity1 = int.tryParse(_quantityController1.text) ?? 0;
                  final double price2 = double.tryParse(_priceController2.text) ?? 0.0;
                  final int quantity2 = int.tryParse(_quantityController2.text) ?? 0;

                  // Navegar para a tela do cliente e passar os valores como parâmetros
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerScreen(price1: price1, quantity1: quantity1, price2: price2, quantity2: quantity2),
                    ),
                  );
                },
                child: Text('Salvar'),
              ),

              ElevatedButton(
                onPressed: () {
                  // Adicione aqui a lógica para limpar os produtos
                },
                child: Text('Limpar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose dos controladores de texto para liberar recursos
    _priceController1.dispose();
    _quantityController1.dispose();
    _priceController2.dispose();
    _quantityController2.dispose();
    super.dispose();
  }
}
