import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>
  runApp(MaterialApp(
    home: QuoteList() ,
  ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Wole shoyinka',text:'Be yourself; everyone else is already taken'),
    Quote(author: 'Chino achebe', text: 'I have nothing to declare except my genius' ),
    Quote(author: 'Ezekiel Abode', text: 'The truth is rarely pure and never simple' )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:Column(
        children: quotes.map((quote)=>QuoteCard(quote: quote)).toList(),
      )
    );
  }
}




