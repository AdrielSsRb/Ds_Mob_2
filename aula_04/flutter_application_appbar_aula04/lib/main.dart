import 'package:flutter/material.dart';

void main() {
  runApp(NavBotton());
}

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
      
 /*  Text(
      'Index 0: School',
      style: optionStyle,
    ),
  */
  TelaHome(), 
  CheckBoxExample(),
   // Tela1() ,  
 /*   Text(
      'Index 1: Business',
      style: optionStyle,
    ),
 */
  /*  Text(
      'Index 2: School',
      style: optionStyle,
    ),
  */
  RadioButton(),

  //TelaSchool(),
/*    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
 */
  TelaSettings(),   
    
  ];
  void onItemTapped(int index) {
    setState(() {
      selectIndex = index;
      
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo aula 04"),
      ),
      body:  Center(
        child: _widgetOptions.elementAt(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: selectIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    
        
          
          

    );
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mobile",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}

class TelaBusiness extends StatelessWidget {
  const TelaBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Business",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}

class TelaSchool extends StatelessWidget {
  const TelaSchool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("School",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}

class TelaSettings extends StatelessWidget {
  const TelaSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Settings",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => CheckBoxState();
}

class CheckBoxState extends State<CheckBoxExample> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text("Check Box 1"),
          Checkbox(
            value: ischeck,
            onChanged: (bool? value){
              setState(() {
                ischeck = value!;

            });
          },),
          Text("Status do checkbox $ischeck")
      ]),
    );
  }
}

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => RadioButtonState();
}

class RadioButtonState extends State<RadioButton> {
  String ? selectOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RadioListTile<String>(
              title: Text("Opção 1"),
              value:  "1",
              groupValue: selectOption,
              onChanged: (value){
                setState(() {
                  selectOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text("Opção 2"),
              value:  "2",
              groupValue: selectOption,
              onChanged: (value){
                setState(() {
                  selectOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text("Opção 3"),
              value:  "3",
              groupValue: selectOption,
              onChanged: (value){
                setState(() {
                  selectOption = value;
                });
              },
            ),
            Text("Opção do Button: $selectOption")
        ],
      ),
    );
  }
}