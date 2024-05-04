import 'package:flutter/material.dart';

class TelaBrazil extends StatelessWidget {
  const TelaBrazil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Brazil",
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Feijoada",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
            ),
            ),]
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://th.bing.com/th/id/OIP.gwn-LATXa0eIYCJhEe0LqwHaE8?rs=1&pid=ImgDetMain',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "A feijoada é o prato típico do Brasil, feito com feijão preto e uma variedade de carnes, como carne de porco, linguiça e costela. É acompanhada de arroz, couve, farofa e laranja. É uma mistura deliciosa de influências indígenas, africanas e portuguesas.",
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