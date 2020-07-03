import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () => {print("Refresh baby")})
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(
            Icons.person_outline, 
            size: 120.0, 
          color: Colors.green),
          TextField(keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Peso em Kg",
          labelStyle: TextStyle(color: Colors.green)),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.green),
          )
        ],
      ),
    );
  }
}
