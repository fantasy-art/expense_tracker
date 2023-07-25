import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({super.key, required this.fill, required this.textAmount});
  final double fill;
  final double textAmount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: FractionallySizedBox(
          heightFactor: fill,
          child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  textAmount.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
