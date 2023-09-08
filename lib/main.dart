import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  // List<String> quotes = [
  //   "The purpose of our lives is to be happy.",
  //   "Life is what happens when you're busy making other plans.",
  //   "Get busy living or get busy dying."
  // ];

  // List<String> authors =["Dalai Lama","John Lennon","Stephen King"];

  List<Quote> quotes = [
    Quote(text: "The purpose of our lives is to be happy.", author: "Dalai Lama"),
    Quote(text: "Life is what happens when you're busy making other plans.", author: "John Lennon"),
    Quote(author: "Stephen King", text: "Get busy living or get busy dying.")
  ];

  // Widget quoteTemplate (quote) {
  //   return QuoteCard(quote: quote);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      appBar: AppBar(
        title: const Text(
          "Awesome Quotes"
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[400],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList(),
      ),
    );
  }
}


