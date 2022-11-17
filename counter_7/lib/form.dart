import 'package:counter_7/drawer.dart';
import 'package:counter_7/globals.dart';
import 'package:counter_7/showbudget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String? _judulBudget ;
    int? _nominal;
    String? _jenisBudget ;
    List<String> listJenisBudget = ['Pemasukan', 'Pengeluaran'];
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form'),
            ),

            drawer: const DrawerApp(
            ),

            body: Form(
              key : _formKey, 
                child: SingleChildScrollView(
                  child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            // Menggunakan padding sebesar 8 pixels
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Judul",
                                // Menambahkan circular border agar lebih rapi
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),

                              // Menambahkan behavior saat nama diketik 
                              onChanged: (String? value) {
                                setState(() {
                                    _judulBudget = value!;
                                });
                              },

                              // Menambahkan behavior saat data disimpan
                              onSaved: (String? value) {
                                setState(() {
                                    _judulBudget = value!;
                                });
                              },

                              // Validator sebagai validasi form
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Judul tidak bisa kosong';
                                }
                                return null;
                              },
                            ),
                          ),

                          Padding(
                            // Menggunakan padding sebesar 8 pixels
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Nominal",
                                // Menambahkan circular border agar lebih rapi
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),

                              // Melimitasi user untuk hanya memasukkan input berupa angka
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],

                              // Menambahkan behavior saat nama diketik 
                              onChanged: (String? value) {
                                  setState(() {
                                      _nominal = int.parse(value!);
                                  });
                              },

                              // Menambahkan behavior saat data disimpan
                              onSaved: (String? value) {
                                  setState(() {
                                    _nominal = int.parse(value!);
                                  });
                              },

                              // Validator sebagai validasi form
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Nominal tidak bisa kosong';
                                }
                                return null;
                              },
                            ),
                          ),

                          Padding(
                            // Menggunakan padding sebesar 8 pixels
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              value: _jenisBudget,
                              items: listJenisBudget.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),

                              onChanged: (String? newValue) {
                                setState(() {
                                  _jenisBudget = newValue!;
                                });
                              },

                              hint: Container(
                                width: 150, //and here
                                child: const Text(
                                  "Pilih Jenis",
                                  style: TextStyle(color: Colors.grey),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                            ),
                          ),

                        ],
                      ),
                  ),
                ),
            ),

            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()){
                  var data = Budget(judul: _judulBudget!, nominal: _nominal!, jenisBudget: _jenisBudget!);
                  budgets.add(data);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const ShowDataPage()),
                  );                
                }
              },
              child: const Text(
                "Simpan",
                style: TextStyle(color: Colors.white),
              ),
          )
        );
    }
}