import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Kocak'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF7F7F7),
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  'assets/img/th.jpg',
                                  width: 75,
                                  height: 75,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Harafsan Alhad',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.edit),
                              SizedBox(width: 10),
                              Text('Edit Profil'),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 20),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F7),
                    ),
                    child: Text('Tentang Profilmu'),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.star),
                              SizedBox(width: 10),
                              Text('Beri Rating'),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.favorite),
                              SizedBox(width: 10),
                              Text('Tambahkan ke Favorit'),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
