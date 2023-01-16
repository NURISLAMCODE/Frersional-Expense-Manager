import 'package:flutter/material.dart';
import '../widgets/all_expenses_screen/all_expenses_fetcher.dart';

class AllExpense extends StatefulWidget {
  const AllExpense({super.key});
  static const name = '_/all_expenses';

  @override
  State<AllExpense> createState() => _AllExpenseState();
}

class _AllExpenseState extends State<AllExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Expenses')),
      body: AllExpensesFetcher(),
    );
  }
}
