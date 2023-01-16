import 'package:expense_app/constants/icons.dart';
import 'package:expense_app/widgets/category_screen/category_fetcher.dart';

import 'package:flutter/material.dart';
import '../widgets/expense_form.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const name = '/category_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: const Text("Money Expense "),
        centerTitle: true,
        actions: [Icon(Icons.manage_accounts)],
      ),
      body: const CategoryFetcher(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) => const ExpenseForm());
        },
      ),
    );
  }
}
