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
              Text("Tela Saude",
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
                'https://th.bing.com/th/id/OIP.iTofZQcYVe3pWT4bSLWGiwHaED?rs=1&pid=ImgDetMain',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "A saúde é um estado de bem-estar físico, mental e social, e não apenas a ausência de doença ou enfermidade. Envolve a manutenção do equilíbrio físico e mental por meio de hábitos saudáveis, nutrição adequada, exercício físico regular e acesso a cuidados médicos preventivos e curativos. Além disso, fatores sociais, econômicos e ambientais desempenham um papel importante na saúde de uma pessoa. A promoção da saúde visa melhorar a qualidade de vida e prevenir doenças, enquanto o sistema de saúde visa fornecer cuidados médicos e tratamentos quando necessário.",
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
