import 'package:flutter/material.dart';

class GameDragSampah extends StatefulWidget {
  const GameDragSampah({super.key});

  @override
  State<GameDragSampah> createState() => _GameDragSampahState();
}

class _GameDragSampahState extends State<GameDragSampah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF32A37F)
          ),
          child: Stack(
            children: [
              Container(alignment: Alignment.topCenter, child: Column(children: [
              Center(child: Text('Taruh Sampah Ke Tempat Yang Benar'),),
              Center(child: Text('Poin: 0'),),
              ],)),
              Positioned(child: Container(margin:EdgeInsets.only(top: 50), alignment: Alignment.topCenter, child: Draggable(
                child: Image.asset('assets/img/sampah_plastik.png'),
                feedback: Image.asset('assets/img/sampah_plastik.png'),
                childWhenDragging: Image.asset('assets/img/sampah_plastik.png'),
                data: 'sampah1',
              ),))

              
              
            ]
          )
        ),
      )
    );
  }
}