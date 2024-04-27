import 'package:aula4_questao1/TelaAgricultura.dart';
import 'package:aula4_questao1/TelaEconomia.dart';
import 'package:aula4_questao1/TelaIndustria.dart';
import 'package:aula4_questao1/TelaSaude.dart';
import 'package:flutter/material.dart';


class NavBotton extends StatelessWidget {
  const NavBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Navigator_screen(),
    );
  }
}

class Navigator_screen extends StatefulWidget {
  const Navigator_screen({super.key});

  @override
  State<Navigator_screen> createState() => _Navigator_screenState();

}

class _Navigator_screenState extends State<Navigator_screen> {
  int selectIndex =0; // variavel pela escolha do widget bar
  // Constante para definir caracteristicas do texto
  static const TextStyle optionStyle =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // Cria lista de widgets 
  static const List<Widget> _widgetOptions = <Widget>[   
  //Nome das Classes das telas
  TelaIndustria(), 
  TelaEconomia(),
  TelaSaude(),
  TelaAgricultura(),   
    
  ];
  void onItemTapped(int index) {
    setState(() {
      selectIndex = index;

      
    });
  }

  @override
  Widget build(BuildContext context) {
    Color corTela;
    if (selectIndex == 0){
      corTela = Colors.grey;
    }
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Aplicativo aula  "),
        //backgroundColor: corTela,
      ),
      body:  Center(
        child: _widgetOptions.elementAt(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Industria',
            backgroundColor: Colors.grey,
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Economia',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: 'Saude',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.eco_sharp),
            label: 'Agricultura',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: selectIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}



