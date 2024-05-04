import 'package:aula4_questao2/TelaBrazil.dart';
import 'package:aula4_questao2/TelaJapan.dart';
import 'package:aula4_questao2/TelaItaly.dart';
import 'package:aula4_questao2/TelaSaude.dart';
import 'package:flutter/material.dart';



class NavBotton extends StatelessWidget {
  const NavBotton({super.key});

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
  TelaItaly(), 
  TelaJapan(),
  TelaSaude(),
  TelaBrazil(),   
    
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
            icon: Icon(Icons.looks_one),
            label: 'Pizza',
            backgroundColor: Colors.grey,
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Sushi',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Taco',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_4),
            label: 'Feijoada',
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



