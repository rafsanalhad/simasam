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
                              SizedBox(height: 20),
                              Text('Lanjutkan Belajar Anda',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                margin: EdgeInsets.only(top: 7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
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
                            alignment: Alignment.topLeft,
                            child: CarouselSlider(
                              options: CarouselOptions(height: 350),
                              items: [1, 2, 3, 4, 5].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                        alignment: Alignment.topCenter,
                                        width: 230,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 2),
                                            Image(
                                                image: AssetImage(
                                                    'assets/img/th.jpg'),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    160,
                                                height: 170,
                                                fit: BoxFit.cover),
                                            Container(
                                                width: 230,
                                                alignment: Alignment.topLeft,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Alasan Anda Tidak Boleh Membuang Sampah Sembarangan',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
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
                ))));
  }
}
