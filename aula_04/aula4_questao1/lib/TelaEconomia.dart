import 'package:flutter/material.dart';

class TelaEconomia extends StatelessWidget {
  const TelaEconomia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tela Economia",
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
