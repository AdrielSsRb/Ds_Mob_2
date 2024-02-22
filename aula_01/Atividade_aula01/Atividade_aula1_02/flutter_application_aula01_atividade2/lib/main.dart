import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("SVAR - Hospedagens"),
        ),
        body: ListView(
          children: [
            Componente("Angra dos Reis", 384, 70, "imagens/angra.jpg"),
          ],
        ),
      ),
    );
  }
}

class Componente extends StatefulWidget {
  final String nome_c;
  final String img;
  int vc; // final antes do tipo da variavel
  // protege contra alteração acidental
  int pess;
  Componente(this.nome_c, this.vc, this.pess, this.img, {super.key});

  @override
  State<Componente> createState() => _ComponenteState();
}

class _ComponenteState extends State<Componente> {
  //Aqui é necessario refazer a parte da logica, no caso mudar a logica, mudar nomes das variaveis
  String? mensagem;
  int qtdePessoas = 0;
  int qtndDias = 0;
  int valor_total = 0;

  void _printmsg() {
    setState(() {
      mensagem = "Mobile";
    });
  }

  void _incqtdeP() {
    setState(() {
      qtdePessoas++;
    });
  }

  void _incqtdeD() {
    setState(() {
      qtndDias++;
    });
  }

  void _calctotal() {
    if (qtndDias > 0) {
      setState(() {
        valor_total = (qtdePessoas * widget.pess) + (qtndDias * widget.vc);
      });
    } else {
      // Se nenhum dia for selecionado, define o valor_total como 0
      setState(() {
        valor_total = 0;
      });
    }
  }

  void _limpar() {
    setState(() {
      qtdePessoas = 0;
      qtndDias = 0;
      valor_total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              color: Colors.blue,
              width: 340,
              height: 265,
              child: Image.asset(
                widget.img,
                fit: BoxFit.fill,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${widget.nome_c}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,), 
              ),
            ),
            Container(
              color: Colors.white,
              width: 340,
              height: 50,
              child: Text(
                "R\$ ${widget.vc}/Dia - R\$ ${widget.pess} /Pessoa",
                style: TextStyle(fontSize: 26, color: Colors.red), 
                textAlign: TextAlign.center,
              ),
            ),         
            Container(
              color: Colors.white,
              width: 320,
              height: 72,
              child: Text(
                "1 Quarto, banheiro, televisão, WiFi, ar-condicionado",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.justify,
              ),
            ),          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.white,
                    width: 300,
                    height: 36,
                    child: Text(
                      "Quantidade de pessoas: $qtdePessoas",
                      style: TextStyle(fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ElevatedButton(onPressed: _incqtdeP, child: Icon(Icons.add)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.white,
                    width: 300,
                    height: 36,
                    child: Text(
                      "Quantidade de dias: $qtndDias",
                      style: TextStyle(fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ElevatedButton(onPressed: _incqtdeD, child: Icon(Icons.add)),
              ],
             ),

            if (qtndDias > 0) // Exibe o valor total apenas se pelo menos uma diária for selecionada
              Container(
                color: Colors.white,
                width: 300,
                height: 45,
                child: Text(
                  "Valor total R\$: ${valor_total}", 
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _calctotal, child: Text("Calcular")),
                ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}