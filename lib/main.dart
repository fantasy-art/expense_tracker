import 'package:expense_tracker/views/expenses_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpensesView(),
    ),
  );
}
