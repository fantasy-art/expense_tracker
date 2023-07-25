import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => Dismissible(
          background: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error.withOpacity(0.7),
                borderRadius: BorderRadius.circular(16)),
          ),
          key: ValueKey(expenses[index]),
          onDismissed: (direction) => onRemoveExpense(expenses[index]),
          child: ExpenseItem(
            expense: expenses[index],
            idExpense: index + 1,
          ),
        ),
      ),
    );
  }
}
