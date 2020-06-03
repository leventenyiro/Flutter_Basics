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
      body: Center(
        /*child: Image(
          //image: NetworkImage("http://www.trophien.com/img/about/mobile.png"),
          //image: AssetImage("assets/cch.png"),
        ),*/
        child: Image.asset("assets/cch.png"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.red[900],
      )
    );
  }
}