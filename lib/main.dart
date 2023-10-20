import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';
void main() {
  runApp(MaterialApp(
    home:quoteList(),

  ));
}
class quoteList extends StatefulWidget {
  const quoteList({super.key});

  @override
  State<quoteList> createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {

  List<Quote> quotes = [
    Quote("text1text1text1text1text1text1text1text1", "author1"),
    Quote("text2text2text2text2text2text2text2text2", "author2"),
    Quote("text3text3text3text3text3text3text3text3", "author3"),
    Quote("text4text4text4text4text4text4text4text4", "author4"),
    Quote("text5text5text5text5text5text5text5text5", "author5")
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quotes"),
        backgroundColor: Colors.redAccent,
      ),
      body:  Column(
        children: quotes.map ((quote) {
          return QuoteCard(
              quote,
              (){
                setState(() {
                  quotes.remove((quote));
                });
              }
          );
        }).toList(),
      ),
    );
  }
}
