import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 80,
          decoration: BoxDecoration(
              color: Color(0xFF18654A),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10, top: 5)),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 5),
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
                  child: Padding(
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
          bottom: -78,
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
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius:
                        BorderRadius.circular(10), // atur sesuai kebutuhan
                    // TRY THIS: Try changing the color to Color.fromARGB(255, 237, 133, 133
                    color: Colors.white, // ubah warna sesuai kebutuhan
                  ),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                          child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                              padding: EdgeInsets.only(left: 90, top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Layanan Kami',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                            child: Center(
                          child: Container(
                              width: 95,
                              height: 100,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF18654A),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(Icons.home,
                                      size: 50, color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Tps Terdekat',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white))
                                ],
                              )),
                        )),
                        Container(
                            child: Center(
                          child: Container(
                              width: 95,
                              height: 100,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF18654A),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(Icons.home,
                                      size: 50, color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Tps Terdekat',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white))
                                ],
                              )),
                        )),
                        Container(
                            child: Center(
                          child: Container(
                              width: 95,
                              height: 100,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF18654A),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(Icons.home,
                                      size: 50, color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Tps Terdekat',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white))
                                ],
                              )),
                        )),
                        Container(
                            child: Center(
                          child: Container(
                              width: 95,
                              height: 100,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Color(0xFF18654A),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(Icons.home,
                                      size: 50, color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Tps Terdekat',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white))
                                ],
                              )),
                        ))
                      ],
                    )
                  ],
                )))
      ],
    )));
  }
}
