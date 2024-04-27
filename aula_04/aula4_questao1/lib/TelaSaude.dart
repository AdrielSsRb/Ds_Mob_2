import 'package:flutter/material.dart';

class TelaSaude extends StatelessWidget {
  const TelaSaude({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tela Saude",
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
