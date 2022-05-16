import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.blue],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 6,
                                  height: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/woody.jpg'),
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white),
                                  height: 80,
                                  width: 80,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Rifki Amirul Hakim',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                        )),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      'Mahasiswa',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                          SizedBox(height: 30),
                          Expanded(
                            child: Center(
                              child: Card(
                                  child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(children: [
                                        Text(
                                          'Pemasukan',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '2.000.000',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                    ),
                                    Container(
                                        child: Column(
                                      children: [
                                        Text(
                                          'Pengeluaran',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '1.500.000',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                                  ],
                                ),
                              )),
                            ),
                          ),
                          SizedBox(height: 10),
                         
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: Card(
                          margin: EdgeInsets.fromLTRB(0.0, 0, 0.0, 0.0),
                          child: Container(
                              child: Padding(
                            padding: EdgeInsets.all(10),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Information",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey[300],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Nama Lengkap'),
                                        Text('Rifki Amirul Hakim'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Email'),
                                        Text('rifki@gmail.com'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('No HP'),
                                        Text('082278375934'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Status'),
                                        Text('Mahasiswa'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Alamat'),
                                        Text('Lampung'),
                                      ],
                                    ),
                                  ),
          
                                ],
                              ),
                            ),
                          ),
                        
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
