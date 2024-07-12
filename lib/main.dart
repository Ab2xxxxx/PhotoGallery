import 'package:flutter/material.dart';
import 'package:photo_gallery/provider/gallery_data.dart';
import 'package:photo_gallery/screens/photo_gallery_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => GalleryData()..getImages(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const PhotoGallery()
      ),
    );
  }
}

