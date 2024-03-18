import 'package:questionario3_exercicio3/main.dart';
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
        title: Text("BASQUETE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Estatísticas do Michael Jordan',
                    style: TextStyle(fontSize: 20, fontFamily: 'ProtesRiot'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color.fromARGB(255, 212, 212, 35),
                    height: 15,
                    width: 275,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Telaprincipal()),
                      );
                    },
                    child: Text("Tela principal"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
