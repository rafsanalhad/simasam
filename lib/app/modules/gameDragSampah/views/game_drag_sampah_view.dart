import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_drag_sampah_controller.dart';

class GameDragSampahView extends GetView<GameDragSampahController> {
  GameDragSampahView({super.key});

  @override
  final controller = Get.put(GameDragSampahController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFF32A37F)),
          child: Column(
            children: [
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
                        child:
                            Obx(() => Text('Poin: ${controller.poin.value}')),
                      ),
                    ],
                  )),
              Container(
                  child: Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: Draggable(
                  child: Image.asset('assets/img/sampah_plastik.png',
                      width: 195, height: 181),
                  feedback: Image.asset('assets/img/sampah_plastik.png',
                      width: 195, height: 181),
                  childWhenDragging: Image.asset(
                      'assets/img/sampah_plastik.png',
                      width: 195,
                      height: 181),
                  data: 'sampah1',
                ),
              )),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DragTarget(
                                onWillAcceptWithDetails: (value) => true,
                                onAcceptWithDetails: (value) {
                                  print(value);
                                  controller.checkImage.value = true;
                                  controller.poin.value += 10;
                                },
                                builder: (context, candidates, rejected) {
                                  return (controller.checkImage.value)
                                      ? Image.asset(
                                          'assets/img/tempat_sampah_gelas.png',
                                          width: 110,
                                          height: 210,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.asset(
                                          'assets/img/tempat_sampah_gelas.png',
                                          width: 110,
                                          height: 210,
                                          fit: BoxFit.cover,
                                        );
                                },
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 13, left: 10),
                                child: DragTarget(
                                  onWillAcceptWithDetails: (value) => true,
                                  onAcceptWithDetails: (value) {
                                    print(value);
                                    controller.checkImage.value = true;
                                    controller.poin.value += 10;
                                  },
                                  builder: (context, candidates, rejected) {
                                    return (controller.checkImage.value)
                                        ? Image.asset(
                                            'assets/img/tempat_sampah_kertas.png',
                                            width: 110,
                                            height: 210,
                                            fit: BoxFit.cover,
                                          )
                                        : Image.asset(
                                            'assets/img/tempat_sampah_kertas.png',
                                            width: 110,
                                            height: 210,
                                            fit: BoxFit.cover,
                                          );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DragTarget(
                              onWillAcceptWithDetails: (value) => true,
                              onAcceptWithDetails: (value) {
                                print(value);
                                controller.checkImage.value = true;
                                controller.poin.value += 10;
                              },
                              builder: (context, candidates, rejected) {
                                return (controller.checkImage.value)
                                    ? Image.asset(
                                        'assets/img/tempat_sampah_metal.png',
                                        width: 110,
                                        height: 210,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        'assets/img/tempat_sampah_metal.png',
                                        width: 110,
                                        height: 210,
                                        fit: BoxFit.cover,
                                      );
                              },
                            ),
                            DragTarget(
                              onWillAcceptWithDetails: (value) => true,
                              onAcceptWithDetails: (value) {
                                print(value);
                                controller.checkImage.value = true;
                                controller.poin.value += 10;
                              },
                              builder: (context, candidates, rejected) {
                                return (controller.checkImage.value)
                                    ? Image.asset(
                                        'assets/img/tempat_sampah_organik.png',
                                        width: 110,
                                        height: 210,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        'assets/img/tempat_sampah_organik.png',
                                        width: 110,
                                        height: 210,
                                        fit: BoxFit.cover,
                                      );
                              },
                            ),
                            DragTarget(
                              onWillAcceptWithDetails: (value) => true,
                              onAcceptWithDetails: (value) {
                                print(value);
                                controller.checkImage.value = true;
                                controller.poin.value += 10;
                              },
                              builder: (context, candidates, rejected) {
                                return (controller.checkImage.value)
                                    ? Image.asset(
                                        'assets/img/tempat_sampah_plastik.png',
                                        width: 110,
                                        height: 223,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        'assets/img/tempat_sampah_plastik.png',
                                        width: 110,
                                        height: 223,
                                        fit: BoxFit.cover,
                                      );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
