// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EdukasiPage extends StatefulWidget {
  const EdukasiPage({super.key});

  @override
  State<EdukasiPage> createState() => _EdukasiPageState();
}

class _EdukasiPageState extends State<EdukasiPage> {
  final TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
              ),
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          Text('Edukasi',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Icon(Icons.search)
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F7F7),
                        ),
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Apa Yang Kamu Pelajari Hari Ini?',
                                style: TextStyle(
                                    fontSize: 28,
                                    wordSpacing: 1,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 16),
                            TextField(
                              controller: _textFieldController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Cari Kelas',
                                hintStyle: TextStyle(color: Colors.grey),
                                suffixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Text('Lanjutkan Belajar Anda',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Container(
                              margin: EdgeInsets.only(top: 7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.topLeft,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage('assets/img/th.jpg'),
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(left: 7),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 2),
                                          Text(
                                            'Figma Into WebFlow Course Study Case',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('UI/UX Design',
                                                  style: TextStyle(
                                                      fontSize: 7,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Container(
                                                width: double
                                                    .infinity, // Sesuaikan lebar dengan kebutuhan
                                                height: 1, // Tinggi garis
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: [
                                                      Colors.red,
                                                      Colors.blue
                                                    ], // Warna gradient dari kiri ke kanan
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ))
                                          // Tambahkan widget lain di sini jika diperlukan
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 15),
                        child: Text('Kelas Populer',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: CarouselSlider(
                            options: CarouselOptions(height: 380),
                            items: [1, 2, 3, 4, 5].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      alignment: Alignment.topCenter,
                                      width: 245,
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 2),
                                          Image(
                                              image: AssetImage(
                                                  'assets/img/th.jpg'),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  50,
                                              height: 170,
                                              fit: BoxFit.cover),
                                          Container(
                                              width: 230,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Alasan Anda Tidak Boleh Membuang Sampah Sembarangan',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      height: 1.2,
                                                    ),
                                                  ),
                                                  SizedBox(height: 40),
                                                  Text('12 materi pembelajaran',
                                                      style: TextStyle(
                                                          fontSize: 8,
                                                          color: Color(
                                                              0xFF949494))),
                                                  SizedBox(height: 10),
                                                  Container(
                                                      child: Row(
                                                    children: [
                                                      Image(
                                                          image: AssetImage(
                                                              'assets/img/profil_img.png'),
                                                          width: 26,
                                                          height: 26,
                                                          fit: BoxFit.cover),
                                                      SizedBox(width: 5),
                                                      Text(
                                                          'Shandika Galih Spd, Mpd',
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                    ],
                                                  ))
                                                ],
                                              ))
                                        ],
                                      ));
                                },
                              );
                            }).toList(),
                          ))
                    ],
                  )
                ],
              ))),
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
