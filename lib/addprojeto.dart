import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductScreen(),
    );
  }
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String newProductImage = "";
  String newProductName = "";
  String newProductPrice = "";

  @override
  Widget build(BuildContext context) {
    if (newProductImage.isEmpty) {
      return buildAdicionarNovoProduto();
    } else {
      return buildProdutoContainer2(
          newProductImage, newProductName, newProductPrice);
    }
  }

  Widget buildAdicionarNovoProduto() {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: const Color(0xFFEBDFCC),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 225,
            height: 225,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Novo Produto'),
                      content: Column(
                        children: [
                          TextField(
                            decoration: const InputDecoration(
                                labelText: 'URL da imagem'),
                            onChanged: (value) {
                              setState(() {
                                newProductImage = value;
                              });
                            },
                          ),
                          TextField(
                            decoration: const InputDecoration(
                                labelText: 'Nome do Produto'),
                            onChanged: (value) {
                              setState(() {
                                newProductName = value;
                              });
                            },
                          ),
                          TextField(
                            decoration:
                                const InputDecoration(labelText: 'Preço'),
                            onChanged: (value) {
                              setState(() {
                                newProductPrice = value;
                              });
                            },
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              newProductImage = "";
                              newProductName = "";
                              newProductPrice = "";
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Confirmar'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEBDFCC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 60,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Text('Adicionar novo produto'),
          ),
        ],
      ),
    );
  }

  Widget buildProdutoContainer2(
      String imagem, String nomeProduto, String preco) {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: const Color(0xFFB10C43),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imagem,
            width: 225,
            height: 225,
          ),
          const SizedBox(height: 10),
          Text(
            nomeProduto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              //
            },
            child: Text('Preço: R\$ $preco'),
          ),
        ],
      ),
    );
  }
}
