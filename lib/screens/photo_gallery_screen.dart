import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_gallery/bloc/gallery_cubit.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GalleryCubit, GalleryState>(
      builder: (context, state) {
        if (state is GalleryLoading){
          return const Center(child: CircularProgressIndicator());
        }
        if (state is GalleryLoaded){
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
                    itemCount: state.images.length,
                    itemBuilder: (context, index) {
                      return Image.network(state.images[index], fit: BoxFit.cover);
                    }),
              ),
            ),
          );
        }

        return Container();
      },
    );
  }
}
