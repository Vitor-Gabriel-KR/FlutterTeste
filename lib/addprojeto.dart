import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductScreen(),
    );
  }
}

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String newProductImage = ""; // Variáveis para armazenar os dados do novo produto
  String newProductName = "";
  String newProductPrice = "";

  @override
  Widget build(BuildContext context) {
   if(newProductImage.isEmpty){

             return buildAdicionarNovoProduto();
   } else {
            return buildProdutoContainer2(newProductImage, newProductName, newProductPrice);

   }
  }

  Widget buildAdicionarNovoProduto() {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Color(0xFFEBDFCC),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 225,
            height: 225,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Novo Produto'),
                      content: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(labelText: 'URL da imagem'),
                            onChanged: (value) {
                              setState(() {
                                newProductImage = value;
                              });
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Nome do Produto'),
                            onChanged: (value) {
                              setState(() {
                                newProductName = value;
                              });
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Preço'),
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
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Confirmar'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEBDFCC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 60,
              ),
            ),
          ),
          SizedBox(height: 10),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {},
            child: Text('Adicionar novo produto'),
          ),
        ],
      ),
    );
  }

  Widget buildProdutoContainer2(String imagem, String nomeProduto, String preco) {
    return Container(
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Color(0xFFB10C43),
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
          SizedBox(height: 10),
          Text(
            nomeProduto,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255),
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