import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo.",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado."
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity,
            // decoration: BoxDecoration(
            //     border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                RaisedButton(
                  onPressed: _gerarFrase,
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.green,
                )
              ],
            ),
          ),
        ));
  }
}
