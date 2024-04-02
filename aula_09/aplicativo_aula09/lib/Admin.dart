import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => AdminScreenState();
}

class AdminScreenState extends State<AdminScreen> {
  // Lista de produtos
  List<Product> products = [
    Product(title: 'Produto 1', quantity: 0, price: 0),
    Product(title: 'Produto 2', quantity: 0, price: 0),
    Product(title: 'Produto 3', quantity: 0, price: 0),
    Product(title: 'Produto 4', quantity: 0, price: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Screen'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            subtitle: Text('Quantidade: ${products[index].quantity}, Preço: ${products[index].price}'),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Implemente aqui a lógica para editar o produto
                // Por exemplo, abrir um diálogo para editar preço e quantidade
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Implemente aqui a lógica para salvar as alterações feitas nos produtos
                Navigator.pop(context); // Volta para a tela de login
              },
              child: Text('Salvar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implemente aqui a lógica para limpar os valores dos produtos
                for (var product in products) {
                  product.quantity = 0;
                  product.price = 0;
                }
                setState(() {}); // Atualiza a interface
              },
              child: Text('Limpar'),
            ),
          ],
        ),
      ),
    );
  }
}

// Classe de modelo para representar um produto
class Product {
  final String title;
  int quantity;
  double price;

  Product({required this.title, required this.quantity, required this.price});
}
