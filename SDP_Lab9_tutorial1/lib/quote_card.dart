import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdp_lab9_ce145/quote.dart';

class QuoteCard extends StatelessWidget {
  //in stateless widget can't allow variable var
  // Quote quote;
  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote,required this.delete});

  // const QuoteCard({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlue[500],
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.lightBlue[500],
              ),
            ),
            SizedBox(height: 8.0,),
            TextButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete,color: Colors.red,),
              label: Text('Delete Quote',
              style: TextStyle(
                color: Colors.red,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}