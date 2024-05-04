import 'package:flutter/material.dart';

class TelaJapan extends StatelessWidget {
  const TelaJapan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Japan",
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Sushi",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://th.bing.com/th/id/OIP.zoTWoTGFWz4T77wp9Ff-eAHaE8?rs=1&pid=ImgDetMain',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "O sushi é um prato típico japonês, composto por arroz temperado com vinagre, combinado com peixe cru, mariscos ou outros ingredientes, como pepino e abacate. É uma expressão de arte culinária, destacando a frescura dos ingredientes e a precisão na preparação.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
