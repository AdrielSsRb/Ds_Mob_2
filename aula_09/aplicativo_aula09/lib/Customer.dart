import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

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
      body: Container(
        color: Colors.blue, // Definindo a cor azul para o Container
      ),
    );
  }
}
