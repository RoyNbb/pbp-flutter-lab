import 'package:counter_7/globals.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

class ShowDataPage extends StatefulWidget {
  const ShowDataPage({super.key});

  @override
  State<ShowDataPage> createState() => _ShowDataPage();
}

class _ShowDataPage extends State<ShowDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: const DrawerApp(),
      body: Center(
          child: ListView.builder(
        itemCount: budgets.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(budgets[index].judul),
            subtitle: Text(budgets[index].nominal.toString()),
            trailing: Text(budgets[index].jenisBudget),
          );
        },
      )),
    );
  }
}
