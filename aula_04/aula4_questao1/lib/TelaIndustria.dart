import 'package:flutter/material.dart';


class TelaIndustria extends StatelessWidget {
  const TelaIndustria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://th.bing.com/th/id/R.0d56fbb4b63de8474e2cf99f4c234fb9?rik=UpsefVGukpmxbg&riu=http%3a%2f%2fwww.maestro.ind.br%2fwp-content%2fuploads%2f2018%2f10%2find%c3%bastria.jpeg&ehk=0KV4uj7oyNxZC22YHHMUnxv%2f2LGDEW%2bDAtA1a418KhU%3d&risl=&pid=ImgRaw&r=0',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "A indústria é o setor econômico dedicado à produção em larga escala de bens e serviços. Ela abrange desde a fabricação de produtos físicos até a prestação de serviços. Surgiu com a Revolução Industrial e continua evoluindo com avanços tecnológicos. A indústria é essencial para o crescimento econômico, gera empregos e enfrenta desafios, como a sustentabilidade e a competição global.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}