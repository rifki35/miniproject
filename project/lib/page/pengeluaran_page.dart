import 'package:flutter/material.dart';
import 'package:login/model/cash_model.dart';
import 'package:login/page/dashboard_page.dart';
import 'package:login/screen/cash/cash_state.dart';
import 'package:provider/provider.dart';

class Pengeluaran extends StatefulWidget {
  const Pengeluaran({Key? key}) : super(key: key);

  @override
  State<Pengeluaran> createState() => _PengeluaranState();
}

class _PengeluaranState extends State<Pengeluaran> {
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
        'Pengeluaran',
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
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _titleController,
                maxLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                    hintText: 'Title'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _nominalController,
                maxLines: 1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nominal',
                    hintText: 'Tulis Nominal Pengeluaran'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _catatanController,
                maxLines: 2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Catatan',
                    hintText: 'Catatan Pengeluaran'),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  cashProvider.addCashModel(CashModel(
                      title: _titleController.text,
                      isPemasukan: false,
                      description: _catatanController.text,
                      nominal: int.parse(_nominalController.text)));
                       Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DashboardPage()));
                },
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
