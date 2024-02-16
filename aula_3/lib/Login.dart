import 'package:aula_3/Telaprocesso.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {

  TextEditingController _loginController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _loginController,
              decoration: InputDecoration(
                labelText: 'Login',
              ),
            ),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true, // Para esconder a senha
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Verifica se o login e a senha estão corretos
                if (_loginController.text == 'adriel@gmail.com' &&
                    _senhaController.text == '1234') {
                  // Se estiverem corretos, navega para a tela secundária
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaProcesso()));
                } else {
                  // Caso contrário, exibe um diálogo de erro
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Erro de Login'),
                      content: Text('Login ou senha incorretos.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    ),  
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
