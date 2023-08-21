import 'package:samples_interactions/expense_card_widget.dart';
import 'package:samples_interactions/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseListScreen extends StatefulWidget {
  final List<Expense> expenses;

  const ExpenseListScreen({
    super.key,
    required this.expenses,
  });

  @override
  State<ExpenseListScreen> createState() => _ExpenseListScreenState();
}

class _ExpenseListScreenState extends State<ExpenseListScreen> {
  List<Expense> expenses = [];
  Curve? curve;
  Duration? duration;

  @override
  void initState() {
    expenses = widget.expenses;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expense Tracker"),
        ),
        body: ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (BuildContext context, int index) {
              var expense = expenses[index];
              return ExpenseCard(
                expense: expense,
              );
            }));
  }
}
