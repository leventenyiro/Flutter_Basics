import "package:flutter/material.dart";
import "quote.dart";

void main() => runApp(MaterialApp(
  home: QuoteList(),
  debugShowCheckedModeBanner: false,
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: "Oscar Wilde", text: "Valami1"),
    Quote(author: "William Sheakespeare", text: "Valami2")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((q) => Text("${q.text} - ${q.author}")).toList(),
        /*children: quotes.map((q) {
          return Text(q);
        }).toList()*/
      ),
    );
  }
}