import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback  delete;
  QuoteCard({required this.quote, required this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[200],
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                )
            ),
            const SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8.0,),
            // TextButton(
            //     style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
            //     ),
            //     onPressed: () {},
            //     child: const Text(
            //       "Delete Quote",
            //       style: TextStyle(
            //         color: Colors.black,
            //       ),
            //     ),
            // )
            ElevatedButton(
                onPressed: delete,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.delete),
                    SizedBox(width: 10.0,),
                    Text("Delete Quote"),
                  ],
                ),
            )

          ],
        ),
      ),
    );
  }
}