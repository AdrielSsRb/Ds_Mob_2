import 'package:flutter/material.dart';


class TelaIndustria extends StatelessWidget {
  const TelaIndustria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tela Industria",
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