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
      body: /*Container(
        //padding: EdgeInsets.all(20.0),
        //padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 15.0, 20.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.grey[400],
        child: Text("Hello"),
      ),*/
      Padding(
        padding: EdgeInsets.all(90.0),
        child: Text("Hello"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.red[900],
      )
    );
  }
}