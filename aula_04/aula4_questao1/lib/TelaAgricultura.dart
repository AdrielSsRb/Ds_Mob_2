import 'package:flutter/material.dart';

class TelaAgricultura extends StatelessWidget {
  const TelaAgricultura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tela Agricultura",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}