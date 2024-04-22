import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pertanyaan 1:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Text(
                    'Apa ibukota Indonesia?',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Jakarta'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                          double.infinity, 50), // Atur lebar ke lebar penuh
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Surabaya'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                          double.infinity, 50), // Atur lebar ke lebar penuh
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Bandung'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                          double.infinity, 50), // Atur lebar ke lebar penuh
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Bali'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                          double.infinity, 50), // Atur lebar ke lebar penuh
                    ),
                  ),
                ],
              ),
            ),
            Spacer(), // Spacer akan menempatkan widget di posisi paling bawah
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Atur lebar ke lebar penuh
                ),
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
