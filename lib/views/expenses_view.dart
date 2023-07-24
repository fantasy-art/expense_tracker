import 'package:expense_tracker/widgets/expenses/expenses_list.dart';
import 'package:flutter/material.dart';

import '../data/expense_data.dart';

class ExpensesView extends StatefulWidget {
  const ExpensesView({super.key});

  @override
  State<ExpensesView> createState() => _ExpensesViewState();
}

class _ExpensesViewState extends State<ExpensesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          ExpensesList(expenses: registeredExpenses)
        ],
      ),
    );
  }
}
