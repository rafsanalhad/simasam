import 'package:flutter/material.dart';

class GameDragSampah extends StatefulWidget {
  const GameDragSampah({super.key});

  @override
  State<GameDragSampah> createState() => _GameDragSampahState();
}

class _GameDragSampahState extends State<GameDragSampah> {
  bool checkImage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          decoration: BoxDecoration(color: Color(0xFF32A37F)),
          child: Column(children: [
            Container(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    Center(
                      child: Text('Taruh Sampah Ke Tempat Yang Benar'),
                    ),
                    Center(
                      child: Text('Poin: 0'),
                    ),
                  ],
                )),
            Positioned(
                child: Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Draggable(
                child: Image.asset('assets/img/sampah_plastik.png',
                    width: 195, height: 181),
                feedback: Image.asset('assets/img/sampah_plastik.png',
                    width: 195, height: 181),
                childWhenDragging: Image.asset('assets/img/sampah_plastik.png',
                    width: 195, height: 181),
                data: 'sampah1',
              ),
            )),
            Positioned(
              top: 0,
              child: Container(
                  height: 450,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Row(children: [
                              Image(
                                  image: AssetImage(
                                      'assets/img/tempat_sampah_gelas.png'),
                                  width: 110,
                                  height: 230),
                              Image(
                                  image: AssetImage(
                                      'assets/img/tempat_sampah_kertas.png'),
                                  width: 110,
                                  height: 230),
                            ]),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              DragTarget(
                                  onWillAcceptWithDetails: (value) => true,
                                  onAcceptWithDetails: (value) {
                                    print(value);
                                    setState(() {
                                      checkImage =
                                          true;
                                    print('accept');
                                    });
                                  },
                                  builder: (context, candidates, rejected) {
                                    return (checkImage) ?  Image(
                                  image: AssetImage(
                                      'assets/img/tempat_sampah_metal.png'),
                                  width: 110,
                                  height: 219) : Container(
                                      width: 110,
                                      height: 219,
                                      color: Colors.red,
                                    );
                                  }),
                              Image(
                                  image: AssetImage(
                                      'assets/img/tempat_sampah_metal.png'),
                                  width: 110,
                                  height: 219),
                              Image(
                                  image: AssetImage(
                                      'assets/img/tempat_sampah_organik.png'),
                                  width: 110,
                                  height: 219),
                              Image(
                                  image: AssetImage(
                                      'assets/img/tempat_sampah_plastik.png'),
                                  width: 110,
                                  height: 219),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            )
          ])),
    ));
  }
}
