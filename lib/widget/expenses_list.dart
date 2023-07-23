import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expense});
  final List<Expense> expense;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expense.length,
        itemBuilder: (context, index) => Text(expense[index].title),
      ),
    );
  }
}
