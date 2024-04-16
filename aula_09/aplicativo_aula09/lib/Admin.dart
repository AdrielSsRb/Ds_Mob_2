import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:aplicativo_aula09/Customer.dart';


class Telaproduto extends StatefulWidget {
  const Telaproduto({Key? key}) : super(key: key);

  @override
  _TelaprodutoState createState() => _TelaprodutoState();
}

class _TelaprodutoState extends State<Telaproduto> {
  List<Produto> produtos = [];

  @override
  void initState() {
    super.initState();
    _loadProdutos(); // Carrega os produtos ao iniciar a tela
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produtos"),
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ProdutoCard(
            produto: produtos[index],
            onEditPressed: () => _showEditDialog(context, index),
          );
        },
      ),
    );
  }

  void _loadProdutos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      produtos = [
        Produto(
          "Videogame",
          "https://m.media-amazon.com/images/I/71YBU9c7qlL._AC_SX679_.jpg",
          prefs.getInt('videogame_quantity') ?? 10,
          prefs.getDouble('videogame_price') ?? 5000,
        ),
        Produto(
          "Telefone",
          "https://m.media-amazon.com/images/I/81YSmKnlijL.__AC_SY445_SX342_QL70_ML2_.jpg",
          prefs.getInt('telefone_quantity') ?? 10,
          prefs.getDouble('telefone_price') ?? 8000,
        ),
        Produto(
          "TV",
          "https://m.media-amazon.com/images/I/61oiiGulDPL.__AC_SX300_SY300_QL70_ML2_.jpg",
          prefs.getInt('tv_quantity') ?? 10,
          prefs.getDouble('tv_price') ?? 6500,
        ),
      ];
    });
  }

  void _showEditDialog(BuildContext context, int index) async {
    Produto produto = produtos[index];
    TextEditingController priceController = TextEditingController(text: produto.price.toString());
    TextEditingController quantityController = TextEditingController(text: produto.quantity.toString());

    final result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Produto'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: priceController,
                decoration: InputDecoration(labelText: 'Novo Preço'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: quantityController,
                decoration: InputDecoration(labelText: 'Nova Quantidade'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false); // Retorna false se o diálogo for fechado sem salvar
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                double newPrice = double.tryParse(priceController.text) ?? produto.price;
                int newQuantity = int.tryParse(quantityController.text) ?? produto.quantity;

                setState(() {
                  produto.price = newPrice;
                  produto.quantity = newQuantity;
                });

                // Salvar as modificações
                _saveProduto(produto);

                Navigator.pop(context, true); // Retorna true se as modificações forem salvas
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );

    // Se as modificações foram salvas, atualiza a lista de produtos
    if (result == true) {
      setState(() {});
    }
  }

  void _saveProduto(Produto produto) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('${produto.productName.toLowerCase()}_quantity', produto.quantity);
    prefs.setDouble('${produto.productName.toLowerCase()}_price', produto.price);
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
  final VoidCallback onEditPressed;

  ProdutoCard({required this.produto, required this.onEditPressed});

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
            Text("Quantidade: ${produto.quantity}"),
            Text("Preço: R\$ ${produto.price}"),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: onEditPressed,
        ),
      ),
    );
  }
}
