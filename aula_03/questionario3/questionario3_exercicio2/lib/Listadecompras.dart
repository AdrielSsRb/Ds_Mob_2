import 'package:questionario3_exercicio2/main.dart';

import 'package:flutter/material.dart';

class Telaprimaria extends StatefulWidget {
  const Telaprimaria({super.key});

  @override
  State<Telaprimaria> createState() => TelaprimariaState();
}

class TelaprimariaState extends State<Telaprimaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1 - "),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildItemList(),
            SizedBox(height: 20),
            _buildDivider(),
            SizedBox(height: 20),
            _buildBackButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildItemList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildListItem('1 - Abacate'),
        _buildListItem('2 - Queijo cheddar'),
        _buildListItem('3 - Espinafre'),
        _buildListItem('4 - Salmão'),
        _buildListItem('5 - Batata doce'),
        _buildListItem('6 - Iogurte grego'),
        _buildListItem('7 - Quinoa'),
        _buildListItem('8 - Pão integral'),
        _buildListItem('9 - Morangos'),
        _buildListItem('10 - Amêndoas'),
      ],
    );
  }

  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot'),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Color.fromARGB(255, 212, 212, 35),
          height: 10,
          width: 250,
        ),
      ],
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => Telaprincipal())); 
          }, child: 
        Text("Voltar ao Inicio",
          style: TextStyle(fontSize: 22, fontFamily: 'ProtesRiot'),
          )
        ),          
      ],
    );
  }
}