import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Classe que representa uma fruta
class Fruit {
  String name;
  double price;
  int quantity;

  // Construtor da classe Fruit
  Fruit({required this.name, required this.price, this.quantity = 0});
}

// Classe principal do aplicativo, um StatefulWidget
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
                // Número de itens na lista igual ao tamanho da lista de frutas
                itemCount: fruits.length,
                // Função que constrói cada item da lista
                itemBuilder: (context, index) {
                  // Exibe cada fruta como um ListTile na ListView
                  return ListTile(
                    // Título do ListTile é o nome da fruta
                    title: Text(fruits[index].name),
                    // Subtítulo do ListTile exibe o preço da fruta
                    subtitle: Text('Preço: \$${fruits[index].price.toStringAsFixed(2)}'),
                    // Botões para aumentar e diminuir a quantidade de frutas
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // IconButton para diminuir a quantidade
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // Atualiza a quantidade e reconstrói o widget
                            setState(() {
                              decreaseQuantity(index);
                            });
                          },
                        ),
                        // Exibe a quantidade atual da fruta
                        Text('Quantidade: ${fruits[index].quantity}'),
                        // IconButton para aumentar a quantidade
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
              'Valor Total: R\$${calculateTotal().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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

  // Método para diminuir a quantidade de uma fruta
  void decreaseQuantity(int index) {
    // Verifica se a quantidade é maior que zero antes de decrementar
    if (fruits[index].quantity > 0) {
      fruits[index].quantity--;
    }
  }

  // Método para calcular o valor total
  double calculateTotal() {
    double total = 0;
    // Itera sobre todas as frutas, calculando o preço total
    for (var fruit in fruits) {
      total += fruit.price * fruit.quantity;
    }
    return total;
  }
}
