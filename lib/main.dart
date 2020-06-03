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
        child: IconButton(
          onPressed: () {
            print("You clicked");
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        )
        /*child: RaisedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.email
          ),
          label: Text("Email"),
          color: Colors.amber,
        ),*/
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.red[900],
      )
    );
  }
}