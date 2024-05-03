import 'package:flutter/material.dart';

class TelaEconomia extends StatelessWidget {
  const TelaEconomia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://th.bing.com/th/id/OIP.7YWs0SKV6r4TyY--vIY9hwHaE6?rs=1&pid=ImgDetMain',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "A economia é o estudo da produção, distribuição e consumo de bens e serviços em uma sociedade. Ela analisa como os recursos limitados são alocados para satisfazer as necessidades e desejos das pessoas. Os principais componentes da economia incluem oferta e demanda, mercado de trabalho, inflação, política monetária e fiscal, comércio internacional e crescimento econômico. A economia pode ser dividida em diferentes áreas de estudo, como microeconomia, que analisa o comportamento individual de consumidores e empresas, e macroeconomia, que estuda a economia como um todo, incluindo o produto interno bruto (PIB), desemprego e políticas governamentais.",
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
