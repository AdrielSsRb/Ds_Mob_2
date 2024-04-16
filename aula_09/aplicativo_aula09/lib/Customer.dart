import 'package:flutter/material.dart';
import 'package:aplicativo_aula09/Admin.dart';


class TelaCliente extends StatefulWidget {
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  List<Produto> carrinho = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loja"),
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ProdutoCard(
            produto: produtos[index],
            onAddPressed: () => _adicionarAoCarrinho(produtos[index]),
            onRemovePressed: () => _removerDoCarrinho(produtos[index]),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total: R\$ ${_calcularTotalCompra()}"),
              ElevatedButton(
                onPressed: _limparCarrinho,
                child: Text("Limpar Carrinho"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _adicionarAoCarrinho(Produto produto) {
    setState(() {
      carrinho.add(produto);
    });
  }

  void _removerDoCarrinho(Produto produto) {
    setState(() {
      carrinho.remove(produto);
    });
  }

  double _calcularTotalCompra() {
    double total = 0;
    for (var produto in carrinho) {
      total += produto.price * produto.quantity;
    }
    return total;
  }

  void _limparCarrinho() {
    setState(() {
      carrinho.clear();
    });
  }
}

class Produto {
  final String productName;
  final String imageUrl;
  int quantity;
  double price;

  Produto(this.productName, this.imageUrl, this.quantity, this.price);
}

class ProdutoCard extends StatelessWidget {
  final Produto produto;
  final VoidCallback onAddPressed;
  final VoidCallback onRemovePressed;

  ProdutoCard({required this.produto, required this.onAddPressed, required this.onRemovePressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.network(
          produto.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(produto.productName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quantidade disponível: ${produto.quantity}"),
            Text("Preço: R\$ ${produto.price}"),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: onAddPressed,
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: onRemovePressed,
            ),
          ],
        ),
      ),
    );
  }
}

// Lista de produtos disponíveis na loja
List<Produto> produtos = [
  Produto("Videogame", "https://m.media-amazon.com/images/I/71YBU9c7qlL._AC_SX679_.jpg", 10, 5000),
  Produto("Telefone", "https://m.media-amazon.com/images/I/81YSmKnlijL.__AC_SY445_SX342_QL70_ML2_.jpg", 10, 8000),
  Produto("TV", "https://m.media-amazon.com/images/I/61oiiGulDPL.__AC_SX300_SY300_QL70_ML2_.jpg", 10, 6500),
];
