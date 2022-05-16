import 'package:flutter/material.dart';
import 'package:login/model/cash_model.dart';
import 'package:login/screen/cash/cash_state.dart';
import 'package:provider/provider.dart';

import '../../page/dashboard_page.dart';

class Pemasukan extends StatefulWidget {
  const Pemasukan({Key? key}) : super(key: key);

  @override
  State<Pemasukan> createState() => _PemasukanState();
}

class _PemasukanState extends State<Pemasukan> {
  final formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _nominalController = TextEditingController();
  final _catatanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cashProvider = Provider.of<CashState>(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Pemasukan',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _titleController,
                maxLines: 1,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                    hintText: 'Title'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _nominalController,
                maxLines: 1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nominal',
                    hintText: 'Tulis Nominal Pemasukan'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _catatanController,
                maxLines: 2,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Catatan',
                    hintText: 'Catatan Pemasukan'),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  cashProvider.addCashModel(CashModel(
                      title: _titleController.text,
                      isPemasukan: true,
                      description: _catatanController.text,
                      nominal: int.parse(_nominalController.text)));
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => DashboardPage()));
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
