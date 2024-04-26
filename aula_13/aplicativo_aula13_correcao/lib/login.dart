import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app Mercado"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                        icon: Icon(Icons.people_alt_outlined),iconColor: Colors.blue,
                        hintText: "Digite seu Nome"
                        ),
                      controller: user,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                        icon: Icon(Icons.key),iconColor: Colors.blue,
                        hintText: "Digite sua Senha",
                        suffixIcon: IconButton(icon : Icon(show? Icons.visibility:Icons.visibility_off,
                        ),onPressed:() {
                          setState(() {
                            show = !show;
                          });
                        },
                        
                        )
                      ),
                      obscureText: show ,
                      obscuringCharacter: ".",
                      controller: password,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}