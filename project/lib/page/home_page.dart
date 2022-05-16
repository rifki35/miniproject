import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:login/page/pemasukan_page.dart';
import 'package:login/page/pengeluaran_page.dart';
import 'package:login/screen/cash/cash_state.dart';


import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final cashProvider = Provider.of<CashState>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[backgroundHeader(), summaryCash()],
                ),
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
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            backgroundColor: Colors.blue,
            overlayOpacity: 0.4,
            spacing: 12,
            spaceBetweenChildren: 12,
            children: [
              SpeedDialChild(
                  child: const Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                  ),
                  backgroundColor: Colors.blueGrey,
                  label: 'Pemasukan',
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const Pemasukan());
                    Navigator.push(context, route);
                  }),
              SpeedDialChild(
                  child: const Icon(
                    Icons.arrow_upward,
                    color: Colors.red,
                  ),
                  backgroundColor: Colors.blueGrey,
                  label: 'Pengeluaran',
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const Pengeluaran());
                    Navigator.push(context, route);
                  }),
            ],
          ),
        ));
  }
}

Widget cardDetail(String title, String description, int price, bool type) {
  return Card(
    margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
    elevation: 8,
    child: ListTile(
      leading: Icon(
        type ? Icons.subdirectory_arrow_right : Icons.subdirectory_arrow_left,
        color: type ? Colors.lightGreen : Colors.red,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(description),
      trailing: Text(
        "Rp " + price.toString(),
        style: TextStyle(color: type ? Colors.lightGreen : Colors.redAccent),
      ),
    ),
  );
}

Widget summaryCash() {
  return Positioned(
    top: 120,
    left: 50,
    child: Container(
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Pemasukan"),
                Divider(),
                Text(
                  "Rp 500.000",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text("Pengeluaran"),
                Divider(),
                Text(
                  "Rp 260.000",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget backgroundHeader() {
  return Container(
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 50, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Rifki",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "085343966997",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
