import 'package:flutter/material.dart';

class TelaAgricultura extends StatelessWidget {
  const TelaAgricultura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tela Agricultura",
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
                'https://th.bing.com/th/id/OIP.QC0SXWJi9XiC3Q1dz2tK4AHaEO?rs=1&pid=ImgDetMain',
                 height: 180,)
            ],
          ),
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "A agricultura é a atividade de cultivar plantas e criar animais para produzir alimentos e outros produtos. É essencial para alimentar a população e impulsionar a economia global. Envolve uma variedade de práticas, desde cultivo tradicional até técnicas modernas, e tem impactos significativos no meio ambiente e na sociedade.",
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