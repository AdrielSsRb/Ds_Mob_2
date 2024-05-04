import 'package:flutter/material.dart';


class TelaItaly extends StatelessWidget {
  const TelaItaly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Italy",
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Pizza",
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
                'https://receitasnotadez.com.br/wp-content/uploads/2020/03/pizza.jpg',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "A pizza é um ícone da culinária italiana, composta por uma base de massa fina ou grossa, coberta com molho de tomate e uma variedade de ingredientes, como queijo, pepperoni, cogumelos e vegetais. É um prato versátil e amado mundialmente, simbolizando a simplicidade e a paixão da cozinha italiana.",
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