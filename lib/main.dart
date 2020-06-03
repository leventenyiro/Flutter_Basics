import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Valami"),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.asset("assets/cch.png"),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pink,
              child: Text("2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text("3"),
            ),
          ),
        ]

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.red[900],
      )
    );
  }
}