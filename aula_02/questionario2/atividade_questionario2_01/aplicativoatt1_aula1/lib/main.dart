import 'package:flutter/material.dart';

void main() {
  runApp(Telaprincipal());
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Campotexto() ,
    );
  }
}

class Campotexto extends StatefulWidget {
 Campotexto({super.key});
  @override
  State<Campotexto> createState() => CampotextoState();
}

class CampotextoState extends State<Campotexto> {
  // variavel do tipo TextEditing controler para armazenar o que é digitado no campo texto
TextEditingController cname = TextEditingController();
TextEditingController cage = TextEditingController();
TextEditingController cemail = TextEditingController();
TextEditingController cphone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Aplicativo Caixa de texto"),
      ),
      body: Column(
       children: [
        // Campo texto
        TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(labelText: "Name:"),        
        // On changed exibe no terminal tudo que for digitado
        controller: cname,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Age:"),
          controller: cage,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(labelText: "e-mail:"),
          controller: cemail,
        ),
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(labelText: "Phone"),
          controller: cphone,
        ),
        //enviar variaveis para o console
        ElevatedButton(onPressed: (){
          print('nome: $cname');
          print('idade: $cage');
          print('e-mail: $cemail');
          print('Telefone: $cphone');
        }, child: Text("Enviar para console")),
       ],     
      ),
    );
  }
}