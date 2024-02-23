import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Fruit {
  String name;
  double price;
  int quantity;

  Fruit({required this.name, required this.price, this.quantity = 0});
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Lista de frutas
  final List<Fruit> fruits = [
    Fruit(name: 'Maçã', price: 2.0),
    Fruit(name: 'Banana', price: 1.5),
    Fruit(name: 'Laranja', price: 1.0),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Frutas'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  // Exibe cada fruta como um ListTile na ListView
                  return ListTile(
                    title: Text(fruits[index].name),
                    subtitle: Text('Preço: \$${fruits[index].price.toStringAsFixed(2)}'),
                    // Botão para aumentar a quantidade de frutas
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Quantidade: ${fruits[index].quantity}'),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // Atualiza a quantidade e reconstrói o widget
                            setState(() {
                              increaseQuantity(index);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Texto para exibir o valor total
            Text(
              'Valor Total: \$${calculateTotal().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Botão para calcular o valor total e exibir em um AlertDialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    double total = calculateTotal();
                    // Caixa de diálogo para exibir o valor total
                    return AlertDialog(
                      title: Text('Valor Total'),
                      content: Text('O valor total a ser pago é: \$${total.toStringAsFixed(2)}'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Calcular Valor Total'),
            ),
          ],
        ),
      ),
    );
  }

  // Método para aumentar a quantidade de uma fruta
  void increaseQuantity(int index) {
    fruits[index].quantity++;
  }

  // Método para calcular o valor total
  double calculateTotal() {
    double total = 0;
    for (var fruit in fruits) {
      total += fruit.price * fruit.quantity;
    }
    return total;
  }
}
