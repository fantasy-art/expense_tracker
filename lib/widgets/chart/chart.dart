import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/chart/chart_bar.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, required this.expense});

  final List<Expense> expense;
  List<ExpenseBucket> get buckets {
    return [
      ExpenseBucket.forCategory(expense, Category.food),
      ExpenseBucket.forCategory(expense, Category.leisure),
      ExpenseBucket.forCategory(expense, Category.travel),
      ExpenseBucket.forCategory(expense, Category.work),
    ];
  }

  double get maxTotalExpense {
    double maxTotalExpense = 0;
    for (final bucket in buckets) {
      if (bucket.totalExpenses > maxTotalExpense) {
        maxTotalExpense = bucket.totalExpenses;
      }
    }
    return maxTotalExpense;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (final bucket in buckets)
                ChartBar(
                  fill: bucket.totalExpenses / maxTotalExpense,
                  textAmount: bucket.totalExpenses,
                )
            ],
          )),
          const SizedBox(height: 12),
          Row(
              children: buckets
                  .map((bucket) => Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Icon(categoryIcons[bucket.category]),
                      )))
                  .toList())
        ],
      ),
    );
  }
}
