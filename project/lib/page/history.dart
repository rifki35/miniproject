import 'package:flutter/material.dart';
import 'package:login/screen/cash/cash_state.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cashProvider = Provider.of<CashState>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: 
        Text('History Pengeluaran',
        
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
         
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int i) {
                  return cardDetail(
                      cashProvider.listCashModel[i].title,
                      cashProvider.listCashModel[i].description,
                      cashProvider.listCashModel[i].nominal,
                      cashProvider.listCashModel[i].isPemasukan);
                },
                itemCount: cashProvider.listCashModel.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
