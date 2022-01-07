import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction'),
      ),
      body: Center(
        child: Text(
          'Transaction',
        ),
      ),
    );
  }
}
