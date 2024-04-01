// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Container(
          height: 1000,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                height: 80,
                decoration: const BoxDecoration(
                    color: Color(0xFF18654A),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10, top: 5)),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top: 5),
                      child: ClipOval(
                          child: Image.asset('assets/img/th.jpg',
                              width: 35, height: 35, fit: BoxFit.cover)),
                    ),
                    Container(
                        child: const Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 10, left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Halo, Karno',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Text('Kesamben, blitar',
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xFFE0E0E0))),
                                Text('#001',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFFE0E0E0)))
                              ],
                            )),
                      ],
                    )),
                    Container(
                        child: const Padding(
                            padding: EdgeInsets.only(left: 150),
                            child: Row(
                              children: [
                                Icon(Icons.notifications, color: Colors.white),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                Icon(Icons.search, color: Colors.white),
                              ],
                            )))
                  ],
                ),
              ),
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: Container(
                  height: 85, // atur tinggi sesuai kebutuhan
                  child: Center(
                    child: FractionallySizedBox(
                      widthFactor: 0.88, // lebar 80% dari layar
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                              10), // atur sesuai kebutuhan
                          // TRY THIS: Try changing the color to Color.fromARGB(255, 237, 133, 133
                          color: Colors.white, // ubah warna sesuai kebutuhan
                        ),
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: Container(
                                child: Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '230,786 TON',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.red),
                                        ),
                                        Text('Sampah berhasil \ndi daur ulang!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Color(0xFF18654A))),
                                        SizedBox(height: 4),
                                        Text('Lihat detail rank',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xFF18654A)))
                                      ],
                                    )),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 90, top: 10),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 4),
                                        Text('Rycler Coin',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF18654A),
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 8),
                                        Text('999999999999',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF18654A),
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 8),
                                        Text('Tukar poin anda',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xFF18654A)))
                                      ],
                                    ))
                              ],
                            ))),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 190,
                  child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Layanan Kami',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                  child: Center(
                                child: Container(
                                    width: 80,
                                    height: 100,
                                    padding: const EdgeInsets.all(12),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF18654A),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Column(
                                      children: [
                                        Icon(Icons.home,
                                            size: 50, color: Colors.white),
                                        SizedBox(height: 10),
                                        Text('Tps Terdekat',
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white))
                                      ],
                                    )),
                              )),
                              Container(
                                  child: Center(
                                child: Container(
                                    width: 80,
                                    height: 100,
                                    padding: const EdgeInsets.all(12),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF18654A),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Column(
                                      children: [
                                        Icon(Icons.home,
                                            size: 50, color: Colors.white),
                                        SizedBox(height: 10),
                                        Text('Tps Terdekat',
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white))
                                      ],
                                    )),
                              )),
                              Container(
                                  child: Center(
                                child: Container(
                                    width: 80,
                                    height: 100,
                                    margin: const EdgeInsets.only(right: 10),
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF18654A),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Column(
                                      children: [
                                        Icon(Icons.home,
                                            size: 50, color: Colors.white),
                                        SizedBox(height: 10),
                                        Text('Tps Terdekat',
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white))
                                      ],
                                    )),
                              )),
                              Container(
                                  child: Center(
                                child: Container(
                                    width: 80,
                                    height: 100,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF18654A),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Column(
                                      children: [
                                        Icon(Icons.home,
                                            size: 50, color: Colors.white),
                                        SizedBox(height: 10),
                                        Text('Tps Terdekat',
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Colors.white))
                                      ],
                                    )),
                              ))
                            ],
                          )
                        ],
                      ))),
              Positioned(
                top: 350,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tempat Daur Ulang Terdekat',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Container(
                            padding: const EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF1FFFA),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/img/th.jpg',
                                    width: 100,
                                    height: 70,
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(left: 5),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('160/5 menit',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xFF777F7C))),
                                        SizedBox(height: 5),
                                        Text('Jl. Raya Kesamben, Blitar',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF516761))),
                                        SizedBox(height: 18),
                                        Text('Green Recyle Klayatan',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xFF93B7AA))),
                                      ],
                                    ))
                              ],
                            )),
                        Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF1FFFA),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/img/th.jpg',
                                    width: 100,
                                    height: 70,
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(left: 5),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('160/5 menit',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xFF777F7C))),
                                        SizedBox(height: 5),
                                        Text('Jl. Raya Kesamben, Blitar',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF516761))),
                                        SizedBox(height: 18),
                                        Text('Green Recyle Klayatan',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xFF93B7AA))),
                                      ],
                                    ))
                              ],
                            ))
                      ],
                    )),
              ),
              Positioned(
                top: 650,
                child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Berita Terbaru',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 3),
                        Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    width: 200,
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Republika',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xFF777F7C))),
                                        SizedBox(height: 5),
                                        Text(
                                            'Pemkot Malang Apresiasi Pasar Online dan Bank Sampah Sawangan Elok',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF516761))),
                                        SizedBox(height: 5),
                                        Text(
                                            'melakukan pemilihan sampah juga bisa memberikan rezeki kepada orang lain',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xFF93B7AA))),
                                      ],
                                    )),
                                Column(children: [
                                  ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container( child: Image.asset(
                                    'assets/img/th.jpg',
                                    width: 120,
                                    height: 100,
                                  ),
                                  ),
                                ),
                                ],)
                                
                              ],
                            )),
                            Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(left: 5, right: 5),
                                    width: 200,
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Republika',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xFF777F7C))),
                                        SizedBox(height: 5),
                                        Text(
                                            'Pemkot Malang Apresiasi Pasar Online dan Bank Sampah Sawangan Elok',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF516761))),
                                        SizedBox(height: 5),
                                        Text(
                                            'melakukan pemilihan sampah juga bisa memberikan rezeki kepada orang lain',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xFF93B7AA))),
                                      ],
                                    )),
                                Column(children: [
                                  ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container( child: Image.asset(
                                    'assets/img/th.jpg',
                                    width: 120,
                                    height: 100,
                                  ),
                                  ),
                                ),
                                ],)
                                
                              ],
                            ))
                      
                      ],
                    )),
              )
            ],
          ))
    ])));
  }
}
