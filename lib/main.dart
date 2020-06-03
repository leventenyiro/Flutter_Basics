import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: Text("Valami"),
      centerTitle: true,
      backgroundColor: Colors.red[900],
    ),
    body: Center(
      child: Text("Hello",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[400],
          fontFamily: "AbrilFatface"
        )
      )
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text("Click"),
      backgroundColor: Colors.red[900],
    ),
  )
));