import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:panorama/panorama.dart';

class GameTrashCleanup extends StatefulWidget {
  const GameTrashCleanup({Key? key}) : super(key: key);

  @override
  State<GameTrashCleanup> createState() => _GameTrashCleanupState();
}

class _GameTrashCleanupState extends State<GameTrashCleanup> {
  List<Offset> trashPositions = []; // List untuk menyimpan posisi sampah

  // Fungsi untuk menghasilkan posisi acak di bawah foto panorama
  void _generateTrashPositions(Size size) {
    trashPositions.clear(); // Bersihkan list posisi sampah sebelum mengisi dengan yang baru
    final Random random = Random();
    final int numberOfTrash = random.nextInt(5) + 5; // Jumlah sampah antara 5 hingga 10
    
    for (int i = 0; i < numberOfTrash; i++) {
      final double left = random.nextDouble() * size.width;
      final double top = random.nextDouble() * size.height;
      trashPositions.add(Offset(left, top));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          _generateTrashPositions(constraints.biggest); // Generate posisi sampah berdasarkan ukuran layar

          return Stack(
            children: [
              // Panorama(
              //   child: Image.asset('assets/img/inside_home.jpg'),
              // ),
              // Positioned(
              //   bottom: 0,
              //   right: 0, // Atur posisi ikon refresh ke kanan bawah
              //   child: InkWell(
              //     onTap: () {
              //       setState(() {
              //         _generateTrashPositions(constraints.biggest);
              //       });
              //     },
              //     child: Image(image: AssetImage('assets/img/sampah_plastik.png'), width: 80, height: 80),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
