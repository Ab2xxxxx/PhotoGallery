import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery/bloc/gallery_cubit.dart';
import 'package:photo_gallery/screens/photo_gallery_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GalleryCubit>(
      create: (context) => GalleryCubit()..getPhotos(),
      child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: const PhotoGallery()),
    );
  }
}
