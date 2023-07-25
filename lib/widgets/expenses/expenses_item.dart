import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(
      {super.key, required this.expense, required this.idExpense});
  final Expense expense;
  final int idExpense;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  idExpense.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Text(
                expense.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Divider(),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text('\$${expense.amount.toStringAsFixed(2)}'),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox(width: 8),
                      Text(expense.formattedDate)
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
