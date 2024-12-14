import 'package:dokuman_flutter/Day4/Color.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              "Pizza",
            style: TextStyle(
              color: pizzaYaziRenk1,
              fontFamily: "Rouge",
              fontSize: 45,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        backgroundColor: pizzaAnaRenk,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Merhaba Dünya",
              style: TextStyle(
                fontSize: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
