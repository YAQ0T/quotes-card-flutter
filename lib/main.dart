import 'package:flutter/material.dart';
import 'quote.dart';
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

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),

            ),
            const SizedBox(height: 6.0),
            Text(quote.author,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800]
            ),
            )
          ],
        ),
      ),
    );
   
  }

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
          return quoteTemplate(quote);
        }).toList(),
      ),
    );
  }
}
