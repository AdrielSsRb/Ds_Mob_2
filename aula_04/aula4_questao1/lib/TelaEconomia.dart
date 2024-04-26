import 'package:flutter/material.dart';

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
