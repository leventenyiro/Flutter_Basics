import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool pressed = false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: Scaffold(
        /*appBar: AppBar(
          title: Text("WordPair Generator")
        ),*/
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    pressed = !pressed;
                  });
                },
                child: Text("Nyomj rá!"),
              ),
              pressed ? Text("Bekapcsolva") : Text("Kikapcsolva")
            ],
          )
        )
      )
    );
  }
}