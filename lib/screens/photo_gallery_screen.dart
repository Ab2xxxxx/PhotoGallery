import 'package:flutter/material.dart';
import 'package:photo_gallery/provider/gallery_data.dart';
import 'package:provider/provider.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({super.key});

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ), 
          itemCount: context.watch<GalleryData>().photos.length,
          itemBuilder: (context, index){
            return Image.network(
              context.watch<GalleryData>().photos[index], 
              fit: BoxFit.cover);
            }
          ),
        ),
      ),
    );
  }
}