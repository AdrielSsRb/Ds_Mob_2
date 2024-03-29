import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  final double price1;
  final int quantity1;
  final double price2;
  final int quantity2;

  const CustomerScreen({
    Key? key,
    required this.price1,
    required this.quantity1,
    required this.price2,
    required this.quantity2,
  }) : super(key: key);

  @override
  State<CustomerScreen> createState() => CustomerScreenState();
}

class CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Screen'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Preço do Produto 1: ${widget.price1}'),
            subtitle: Text('Quantidade: ${widget.quantity1}'),
          ),
          ListTile(
            title: Text('Preço do Produto 2: ${widget.price2}'),
            subtitle: Text('Quantidade: ${widget.quantity2}'),
          ),
          // Adicione mais listTiles conforme necessário para outros produtos
        ],
      ),
    );
  }
}
