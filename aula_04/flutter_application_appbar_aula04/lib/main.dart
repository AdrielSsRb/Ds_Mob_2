import 'package:flutter/material.dart';

void main() {
  runApp(NavBotton());
}

class NavBotton extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aplicativo aula 04"),
      ),
      body: Column(

      ),
    ) ;
  }
}