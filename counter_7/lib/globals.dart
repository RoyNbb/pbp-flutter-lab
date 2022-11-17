library counter_7.globals;

class Budget {
  late String judul;
  late int nominal;
  late String jenisBudget;

  Budget(
      {required this.judul, required this.nominal, required this.jenisBudget});
}

List<Budget> budgets = [];
