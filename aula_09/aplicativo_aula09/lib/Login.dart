import 'package:flutter/material.dart';
import 'package:aplicativo_aula09/Admin.dart';
import 'package:aplicativo_aula09/Customer.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _User = TextEditingController();
  TextEditingController _Password = TextEditingController();

  String _radioValue =
      ''; // Variável para armazenar o valor selecionado do radio button

  @override
  void dispose() {
    _User.dispose(); // Importante para liberar os recursos do controlador
    _Password.dispose(); // Importante para liberar os recursos do controlador
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _User,
              decoration: InputDecoration(labelText: 'Usuário'),
            ),
            TextField(
              controller: _Password,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<String>(
                  value: 'admin',
                  groupValue: _radioValue,
                  onChanged: (value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
                Text('Admin'),
                Radio<String>(
                  value: 'cliente',
                  groupValue: _radioValue,
                  onChanged: (value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
                Text('Cliente'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Verifica se o login, a senha e o tipo de usuário estão corretos para o primeiro usuário
                    if (_User.text == 'adriel@admin.com' &&
                        _Password.text == '1234' &&
                        _radioValue == 'admin') {
                      // Se estiverem corretos, navega para a tela de admin/produtos
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Telaproduto()),
                      );
                    } else if (_radioValue == 'cliente' &&
                            (_User.text == 'daniel@user.com' &&
                                _Password.text == '4321') ||
                        (_User.text == 'adriel@admin.com' &&
                            _Password.text == '1234')) {
                      // Se estiverem corretos, navega para a tela de cliente/customer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCliente()),
                      );
                      // Adicione a lógica aqui para o segundo usuário, se necessário
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
          ],
        ),
      ),
    );
  }
}
