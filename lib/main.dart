import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEBDFCC),
        appBar: AppBar(
          title: Text('Shoppe Nerfada'),
          backgroundColor: Color(0xFFB10C43),
        ),
        body: Column(
          children: [
            Container(
              height: 16.0,
              color: Color(0xFFEBDFCC),
            ),
            Container(
              height: 32.0,
              color: Color(0xFFB10C43),
              child: Center(
                child: Text(
                  'Atividade E-commerce Flutter',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEBDFCC),
                  ),
                ),
              ),
            ),
            Container(
              height: 16.0,
              color: Color(0xFFEBDFCC),
            ),
            Container(
              color: Color(0xFFEBDFCC),
              child: Center(
                child: Text(
                  'Seus Produtos',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: 16.0,
              color: Color(0xFFEBDFCC),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
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
                        'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                        width: 225,
                        height: 225,
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text('  Preço: R\$ 100,00,'),
                      ),
                    ],
                  ),
                ),
                Container(
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
                        'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                        width: 225,
                        height: 225,
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text('  Preço: R\$ 100,0,'),
                      ),
                    ],
                  ),
                ),
                Container(
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
                        'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                        width: 225,
                        height: 225,
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text('  Preço: R\$ 100,00,'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 16.0,
              color: Color(0xFFEBDFCC),
            ),
            Container(
              color: Color(0xFFEBDFCC),
              child: Center(
                child: Text(
                  'Produtos',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: 16.0,
              color: Color(0xFFEBDFCC),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
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
                        'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                        width: 225,
                        height: 225,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Preço: R\$ 100,00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                        'https://imageproxyb.ifunny.co/crop:x-20,resize:640x,quality:90x75/images/acecb17ac30ddc9a385a1d9f3ad32e71ee7d36dd75e51a7902361495c46348dd_1.jpg',
                        width: 225,
                        height: 225,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Preço: R\$ 100,00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
