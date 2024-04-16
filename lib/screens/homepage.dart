// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:simasam/screens/edukasipage.dart';
import 'package:simasam/modules/userdata.dart';
import 'package:simasam/screens/gamedragsampah.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late Future<UserData> futureUserData;
  String name = '';
  @override
  void initState() {
    super.initState();
    futureUserData = UserData.connectToApi('1');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF7F7F7),
            ),
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
                          child: Column(
                        children: [
                        
                          Padding(
                              padding: EdgeInsets.only(top: 10, left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   FutureBuilder<UserData>(
                            future: futureUserData,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                // return Text(snapshot.data!.name);
                                return Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                    Text('Halo, ${snapshot.data!.name}!',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Text('Kesamben, blitar',
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xFFE0E0E0))),
                                  Text('#001',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFE0E0E0)))
                                  ],)
                                );
                              } else {
                                return Text('No data available');
                              }
                            },
                          ),
                                ],
                              )),
                        ],
                      )),
                      Container(
                          alignment: Alignment.topRight,
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.notifications,
                                        color: Colors.white),
                                    Padding(padding: EdgeInsets.only(left: 20)),
                                    Icon(Icons.search, color: Colors.white),
                                  ],
                                ),
                              ))
                    ],
                  ),
                ),
                Positioned(
                  top: 75,
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
                                                fontSize: 12,
                                                color: Colors.red),
                                          ),
                                          Text(
                                              'Sampah berhasil \ndi daur ulang!',
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
                  top: 176,
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Layanan Kami',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: 100, // set tinggi GridView sesuai kebutuhan
                          child: GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true, // atur shrinkWrap ke true
                            crossAxisCount: 4, // ubah crossAxisCount menjadi 4
                            children: [
                              Container(
                                child: Center(
                                  child: Container(
                                    width: 70,
                                    height: 100,
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF18654A),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Column(
                                      children: [
                                        Icon(Icons.home,
                                            size: 38, color: Colors.white),
                                        SizedBox(height: 7),
                                        Text(
                                          'Tps Terdekat',
                                          style: TextStyle(
                                              fontSize: 7, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const EdukasiPage()));
                                },
                                child: Container(
                                  child: Center(
                                    child: Container(
                                      width: 70,
                                      height: 100,
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF18654A),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Column(
                                        children: [
                                          Icon(Icons.home,
                                              size: 38, color: Colors.white),
                                          SizedBox(height: 7),
                                          Text(
                                            'Klasifikasi',
                                            style: TextStyle(
                                                fontSize: 7,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const GameDragSampah()));
                                },
                                child: Container(
                                  child: Center(
                                    child: Container(
                                      width: 70,
                                      height: 100,
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF18654A),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Column(
                                        children: [
                                          Icon(Icons.home,
                                              size: 38, color: Colors.white),
                                          SizedBox(height: 7),
                                          Text(
                                            'Edukasi',
                                            style: TextStyle(
                                                fontSize: 7,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const EdukasiPage()));
                                },
                                child: Container(
                                  child: Center(
                                    child: Container(
                                      width: 70,
                                      height: 100,
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF18654A),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Column(
                                        children: [
                                          Icon(Icons.home,
                                              size: 38, color: Colors.white),
                                          SizedBox(height: 7),
                                          Text(
                                            'Pelaporan',
                                            style: TextStyle(
                                                fontSize: 7,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              // Tambahkan item-grid lainnya di sini
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
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
                  top: 600,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
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
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          child: Image.asset(
                                            'assets/img/th.jpg',
                                            width: 90,
                                            height: 100,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
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
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          child: Image.asset(
                                            'assets/img/th.jpg',
                                            width: 90,
                                            height: 100,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      )),
                )
              ],
            ))
      ])),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels:
            false, // Menyembunyikan label pada item yang dipilih
        showUnselectedLabels:
            false, // Menyembunyikan label pada item yang tidak dipilih
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF32A37F), size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Color(0xFF32A37F), size: 30),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Color(0xFF32A37F), size: 30),
            label: 'jljlk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Color(0xFF32A37F), size: 30),
            label: 'ljlj',
          ),
        ],
      ),
    );
  }
}
