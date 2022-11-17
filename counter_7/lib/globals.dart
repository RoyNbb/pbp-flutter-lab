library counter_7.globals;

class Budget {
  late String judul;
  late int nominal;
  late String jenisBudget;
  late DateTime tanggalBudget;
  Budget(
    {required this.judul, required this.nominal, required this.jenisBudget, required this.tanggalBudget}
  );
}

List<Budget> budgets = [];
