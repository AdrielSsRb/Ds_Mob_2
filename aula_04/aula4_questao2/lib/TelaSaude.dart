import 'package:flutter/material.dart';

class TelaSaude extends StatelessWidget {
  const TelaSaude({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mexico",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Taco",
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
                'https://th.bing.com/th/id/R.f5ba8e5ae46ae50c0cf6c583a5fab9f3?rik=HM4MCJImoxIzew&riu=http%3a%2f%2fwww.pilotandofogao.com.br%2fwp-content%2fuploads%2f2016%2f03%2fTacos-mexicanos.jpg&ehk=z0ubv6gQaKf%2fn4oDlUksymfWewxT78vXetRgfAQpsRU%3d&risl=&pid=ImgRaw&r=0',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Os tacos são um prato icônico do México, consistindo em tortilhas de milho ou trigo dobradas e recheadas com uma variedade de ingredientes, como carne, frango, peixe, vegetais, queijo, guacamole e salsa. É uma explosão de sabores e cores, refletindo a rica cultura e tradição culinária do México.",
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
