import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImageGridPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageGridPage extends StatelessWidget {
  const ImageGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = <String>[
      'asset/images/r1.jpg',
      'asset/images/r2.jpg',
      'asset/images/r3.jpg',
      'asset/images/r4.jpg',
      'asset/images/r5.jpg',
      'asset/images/r6.jpg',
      'asset/images/r7.jpg',
      'asset/images/r8.jpg',
      'asset/images/r9.jpg',
      'asset/images/r10.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Image Grid'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // จำนวนคอลัมน์
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageList[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
