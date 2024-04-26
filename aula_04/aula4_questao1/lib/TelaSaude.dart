import 'package:flutter/material.dart';

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