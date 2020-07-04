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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20.0, 130, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_outline, size: 120.0, color: Colors.green),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso em (Kg)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Calcular",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ),
            ),
            Text(
              "Info",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0, color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
