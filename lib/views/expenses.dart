import 'package:expense_tracker/widgets/expenses/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    final List<Expense> registeredExpenses = [
      Expense(
          title: 'Flutter Course',
          amount: 19.99,
          dateTime: DateTime.now(),
          category: Category.food),
      Expense(
          title: 'Cinema',
          amount: 15.69,
          dateTime: DateTime.now(),
          category: Category.leisure),
    ];

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
